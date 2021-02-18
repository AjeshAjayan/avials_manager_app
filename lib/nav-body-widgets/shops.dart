import 'package:avilas_manager_app/apis/get_shop_list.dart';
import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/models/index.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-details.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Shops extends StatefulWidget {
  final Animation animation;

  Shops({this.animation});
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  List<ShopUserList> _list = [];

  @override
  void initState() {
    _fetchShops();
    super.initState();
  }

  Future<void> _fetchShops() async {
    /// get shops by manager assigned places
    final list = await getShopUserList(context: context);
    setState(()  {
      _list = list;
    });
  }

  void _shopOnTap(ShopUserList shopDetails) {
    MyHomePage.navBodyChange.value = ShopDetails(
      animation: widget.animation,
      shopDetails: shopDetails,
    );
  }

  Widget _buildShopList() {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate((context, i) {
          return InkWell(
            splashColor: Theme.of(context).accentColor,
            onTap: () => _shopOnTap(_list[i]),
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
                        image: _list[i].shopImage.formats.thumbnail.url,
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
                            child: Text(_list[i].shopName),
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
                            child: Text(_list[i].dateOfJoin),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }, childCount: _list.length),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return A_Animation1(
      animation: widget.animation,
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
    );
  }
}
