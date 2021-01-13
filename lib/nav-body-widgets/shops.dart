import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-product.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Shops extends StatefulWidget {
  final Animation animation;

  Shops({this.animation});
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  List<Map> _list = [
    {
      'shop_name': 'SHOP ONE',
      'date_of_join': '5/12/2020',
      'shop_image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'is_expired': false,
      'is_closed': false,
    },
    {
      'shop_name': 'SHOP TWO',
      'date_of_join': '5/12/2020',
      'shop_image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'is_expired': false,
      'is_closed': false,
    },
    {
      'shop_name': 'SHOP TWO',
      'date_of_join': '5/12/2020',
      'shop_image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'is_expired': false,
      'is_closed': false,
    },
    {
      'shop_name': 'SHOP FOUR',
      'date_of_join': '5/12/2020',
      'shop_image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'is_expired': false,
      'is_closed': false,
    },
  ];

  void _shopOnTap() {
    MyHomePage.navBodyChange.value = ShopProducts(
      animation: widget.animation,
    );
  }

  Widget _buildShopList() {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate((context, i) {
          return InkWell(
            onTap: _shopOnTap,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image(
                        image: NetworkImage(_list[i]['shop_image'], scale: 10),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(_list[i]['shop_name']),
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
                            child: Text(_list[i]['date_of_join']),
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
