import 'package:avilas_manager_app/apis/set_order_status.dart';
import 'package:avilas_manager_app/apis/get_orders.dart';
import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/models/order.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class Orders extends StatefulWidget {
  final Animation animation;

  Orders({this.animation});

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin {
  Order _selected;

  AnimationController _animationController;

  Animation _openPreviewAnimation;

  static const _pageSize = 8;

  final PagingController<int, Order> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _openPreviewAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));

    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return A_Animation1(
      animation: widget.animation,
      child: Center(
        child: FractionallySizedBox(
          widthFactor: AvialsManagerTheme.bodyWidthFactor,
          child: Column(
            children: [
              AvialsManagerTheme.buildBodyHeader(
                context,
                'Orders',
                Icon(Icons.shopping_bag_outlined),
              ),
              Flexible(
                flex: 2,
                child: _buildOrderList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderList() {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: PagedListView<int, Order>(
        pagingController: _pagingController,
        builderDelegate:
            PagedChildBuilderDelegate<Order>(itemBuilder: (context, item, i) {
          return InkWell(
            splashColor: Theme.of(context).accentColor,
            onTap: () => _setPreview(i),
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
                        image: item.public_user != null
                            ? item.public_user.profile_pic.formats.small.url
                            : 'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
                        imageScale: 10,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                            child: Text(item.public_user?.full_name ?? '--'),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(item.public_user?.phone_number ?? '--'),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                'Place: ${item.public_user?.place?.title ?? '--'}'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildSelectPreView() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter stateSetter) => Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.gif',
                      image: _selected.public_user?.profile_pic?.formats
                              ?.thumbnail?.url ??
                          'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_selected.public_user?.full_name ?? '--'),
                      Text('To: ' + _selected.public_user?.place?.title ?? '--'),
                      Text(
                        'From: ' + _getOrderChildrenShopOrPublic(),
                        textAlign: TextAlign.center,
                      ),
                      RaisedButton(
                        color: Theme.of(context).buttonColor,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) =>
                                  AvialsManagerTheme.buildOnDevelopmentAlert(
                                      context));
                        },
                        child: Text('Directions'),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Processed'),
                          Switch(
                            value: _selected.is_processed,
                            onChanged: (value) {
                              stateSetter(() {
                                _selected.is_processed = value;
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dispatched'),
                          Switch(
                            value: _selected.is_dispatched,
                            onChanged: (value) {
                              stateSetter(() {
                                _selected.is_dispatched = value;
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Delivered'),
                          Switch(
                            value: _selected.is_delivered,
                            onChanged: (value) {
                              stateSetter(() {
                                _selected.is_delivered = value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Flexible(
              child: RaisedButton(
                color: Theme.of(context).buttonColor,
                child: FractionallySizedBox(
                  widthFactor: 0.4,
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Icon(Icons.save),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text('Save'),
                      ),
                    ],
                  ),
                ),
                onPressed: _onSave,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onSave() async {
    Navigator.pop(context);
    MyHomePage.showLoading.value = true;

    await setOrderStatus(
      context: context,
      id: _selected.id,
      order: _selected,
    );

    MyHomePage.showLoading.value = false;
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await getOrders(
          context, _pagingController.itemList?.length ?? 0, _pageSize);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      print(error);
      _pagingController.error = error;
    }
  }

  void _setPreview(int i) {
    setState(() {
      _selected = _pagingController.itemList[i];
    });
    showBottomSheet(
      context: context,
      builder: (_) => _buildSelectPreView(

      ),
    );
  }

  Future<void> _onRefresh() async {
    _pagingController.refresh();
  }

  String _getOrderChildrenShopOrPublic() {
    String from = '';
    for (int i = 0; i < _selected?.order_children?.length ?? 0; i++) {
      if (_selected?.order_children[i]?.public_user != null) {
        from +=
            _selected.order_children[i].public_user.full_name + '(PUBLIC), ';
      } else {
        from += _selected.order_children[i].shop_user.shop_name + '(SHOP), ';
      }
    }
    return from;
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pagingController.dispose();
    super.dispose();
  }
}
