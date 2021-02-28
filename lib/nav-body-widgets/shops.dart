import 'dart:convert';

import 'package:avilas_manager_app/apis/get_shop_list.dart';
import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/models/index.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-details.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class Shops extends StatefulWidget {
  final Animation animation;

  Shops({this.animation});
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  static const _pageSize = 10;

  final PagingController<int, ShopUserList> _pagingController =
  PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchShops(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchShops(int pageKey) async {
    try {
      final newItems = await getShopUserList(
        context: context,
        start: _pagingController.itemList?.length ?? 0,
        limit: _pageSize,
      );
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
      print(error);
    }
  }

  Future<void> _refreshShops() async {
    _pagingController.refresh();
  }

  void _shopOnTap(ShopUserList shopDetails) {
    MyHomePage.navBodyChange.value = ShopDetails(
      animation: widget.animation,
      shopDetails: shopDetails,
    );
  }

  Widget _buildShopList() {
    return PagedListView<int, ShopUserList>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<ShopUserList>(
        itemBuilder: (context, item, index) {
          return InkWell(
            splashColor: Theme.of(context).accentColor,
            onTap: () => _shopOnTap(item),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/loading.gif',
                        image: item.shopImage.formats.thumbnail.url,
                        imageScale: 10,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(item.shopName),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(item.dateOfJoin),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return A_Animation1(
      animation: widget.animation,
      child: RefreshIndicator(
        onRefresh: _refreshShops,
        child: Container(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: AvialsManagerTheme.bodyWidthFactor,
              child: Column(
                children: [
                  AvialsManagerTheme.buildBodyHeader(
                    context,
                    'Shops',
                    Icon(Icons.store),
                  ),
                  Flexible(
                    flex: 2,
                    child: _buildShopList(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
