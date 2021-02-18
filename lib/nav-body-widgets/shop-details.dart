import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/models/index.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-orders.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-products.dart';
import 'package:avilas_manager_app/nav-body-widgets/shops.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ShopDetails extends StatefulWidget {
  final Animation animation;
  final ShopUserList shopDetails;

  ShopDetails({this.animation, this.shopDetails});
  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
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
                AvialsManagerTheme.buildBodyHeaderWithActions(
                    context,
                    'Shop details',
                    const Icon(Icons.description),
                    [
                      InkWell(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(70, 20)),
                        onTap: _handleProductChipClick,
                        splashColor: AvialsManagerTheme.theme.accentColor,
                        child: Chip(
                          backgroundColor: AvialsManagerTheme.theme.accentColor,
                          label: Text('Products',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      InkWell(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(70, 20)),
                        onTap: _handleOrderClick,
                        splashColor: AvialsManagerTheme.theme.accentColor,
                        child: Chip(
                          backgroundColor: AvialsManagerTheme.theme.accentColor,
                          label: Text('Orders',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      InkWell(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(70, 20)),
                        onTap: _handleOpenOnMap,
                        splashColor: AvialsManagerTheme.theme.accentColor,
                        child: Chip(
                          backgroundColor: AvialsManagerTheme.theme.accentColor,
                          label: Text('Map',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                    _handleBackButtonCallBack),
                Expanded(
                  child: Card(
                    child: Container(
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverAppBar(
                            expandedHeight: 170.0,
                            floating: true,
                            pinned: true,
                            snap: true,
                            elevation: 50,
                            flexibleSpace: FlexibleSpaceBar(
                              centerTitle: true,
                              title: Text(
                                widget.shopDetails.shopName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              background: Image.network(
                                'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          new SliverList(
                            delegate: SliverChildListDelegate(_buildList()),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleBackButtonCallBack() {
    MyHomePage.navBodyChange.value = Shops(
      animation: widget.animation,
    );
  }

  Widget _buildShopDetailsCard(Icon icon, String content) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Container(
              width: 50,
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [icon],
              ),
            ),
            Expanded(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(content),
              ),
            )),
          ],
        ),
      ),
    );
  }

  List _buildList() {
    List<Widget> listItems = List();

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.description),
      'this is description of shop this is description of shop this is description of shop this is description of shop',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.location_on),
      'Kollam',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.directions_bike_sharp),
      'Delivery boys:\nAjesh, Sanu, Manu',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Total orders: 78',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Pending orders: 10',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Completed orders: 68',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_cart),
      'Total Products: 15',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.next_plan),
      'Plan: Premium',
    ));

    return listItems;
  }

  void _handleProductChipClick() {
    MyHomePage.navBodyChange.value = ShopProducts(
      animation: widget.animation,
      shopDetails: widget.shopDetails,
    );
  }

  void _handleOrderClick() {
    MyHomePage.navBodyChange.value = ShopOrders(
      animation: widget.animation,
      shopDetails: widget.shopDetails,
    );
  }

  void _handleOpenOnMap() {
    showDialog(
      context: context,
      builder: (_) => AvialsManagerTheme.buildOnDevelopmentAlert(context)
    );
  }
}
