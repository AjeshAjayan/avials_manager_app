import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:flutter/material.dart';

class ShopProducts extends StatefulWidget {
  final Animation animation;

  ShopProducts({this.animation});
  @override
  _ShopProductsState createState() => _ShopProductsState();
}

class _ShopProductsState extends State<ShopProducts> {
  List<Map> _list = [
    {
      'customer': 'CUS ONE',
      'product': 'PROD ONE',
      'productImage':
          'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'qty': '10',
      'orderedAt': '5/1/2021',
      'shop': 'SHOP ONE',
      'place': 'PLACE ONE',
    },
    {
      'customer': 'CUS ONE',
      'product': 'PROD ONE',
      'productImage':
          'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'qty': '10',
      'orderedAt': '5/1/2021',
      'shop': 'SHOP ONE',
      'place': 'PLACE ONE',
    },
    {
      'customer': 'CUS ONE',
      'product': 'PROD ONE',
      'productImage':
          'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'qty': '10',
      'orderedAt': '5/1/2021',
      'shop': 'SHOP ONE',
      'place': 'PLACE ONE',
    },
    {
      'customer': 'CUS ONE',
      'product': 'PROD ONE',
      'productImage':
          'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'qty': '10',
      'orderedAt': '5/1/2021',
      'shop': 'SHOP ONE',
      'place': 'PLACE ONE',
    },
    {
      'customer': 'CUS ONE',
      'product': 'PROD ONE',
      'productImage':
          'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'qty': '10',
      'orderedAt': '5/1/2021',
      'shop': 'SHOP ONE',
      'place': 'PLACE ONE',
    },
    {
      'customer': 'CUS ONE',
      'product': 'PROD ONE',
      'productImage':
          'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'qty': '10',
      'orderedAt': '5/1/2021',
      'shop': 'SHOP ONE',
      'place': 'PLACE ONE',
    }
  ];

  Widget _buildOrderList() {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate((context, i) {
          return InkWell(
            onTap: () => {},
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image(
                        image:
                            NetworkImage(_list[i]['productImage'], scale: 10),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(_list[i]['customer']),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(_list[i]['product']),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(_list[i]['qty']),
                          ),
                        )
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
                            child: Text(_list[i]['orderedAt']),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(_list[i]['shop']),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(_list[i]['place']),
                          ),
                        )
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
                  'Shop products',
                  Icon(Icons.shopping_cart),
                ),
                Expanded(child: _buildOrderList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
