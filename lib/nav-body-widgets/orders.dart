import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Orders extends StatefulWidget {
  final Animation animation;

  Orders({this.animation});

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin {
  Map _selected;
  bool _isDelivered = false;
  bool _isProcessed = false;
  bool _isDispatched = false;

  AnimationController _animationController;

  Animation _openPreviewAnimation;

  List<Map<String, dynamic>> _list = [
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
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate((context, i) {
          return InkWell(
            splashColor: Theme.of(context).accentColor,
            onTap: () => _setPreview(i),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.gif',
                      image: _list[i]['productImage'],
                      imageScale: 10,
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

  Widget _buildSelectPreView() {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1,
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: _selected['productImage'],
                imageScale: 10,
              ),
            ),
          ),
          SizedBox(width: 20),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_selected['customer']),
                Text(_selected['product']),
                Text('From: ' + _selected['shop']),
                Text('To: ' + _selected['place']),
                RaisedButton(
                  color: Theme.of(context).buttonColor,
                  onPressed: () {
                    showDialog(context: context, builder: (_) => AvialsManagerTheme.buildOnDevelopmentAlert(context));
                  },
                  child: Text('Directions'),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Processed'),
                    Switch(
                      value: _isProcessed,
                      onChanged: (value) {
                        setState(() {
                          _isProcessed = value;
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
                      value: _isDispatched,
                      onChanged: (value) {
                        setState(() {
                          _isDispatched = value;
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
                      value: _isDelivered,
                      onChanged: (value) {
                        setState(() {
                          _isDelivered = value;
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
    );
  }

  void _setPreview(int i) {
    _animationController.forward();
    setState(() {
      _selected = _list[i];
    });
    showBottomSheet(
      context: context,
      builder: (_) => _buildSelectPreView(),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
