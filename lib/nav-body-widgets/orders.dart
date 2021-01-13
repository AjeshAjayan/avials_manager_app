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
            onTap: () => _setPreview(i),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image(
                        image: NetworkImage(_list[i]['productImage'], scale: 10),
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

  Widget _buildSelectPreView() {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(_selected['productImage']),
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
                    // TODO
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
          Container(
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100)
                    ),
                    splashColor: Theme.of(context).accentColor,
                    onTap: _closeSelected,
                    child: Icon(
                      Icons.close,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _setPreview(int i) {
    _animationController.forward();
    setState(() {
      _selected = _list[i];
    });
  }

  void _closeSelected() {
    _animationController.reverse().then((value) => {
          setState(() {
            _selected = null;
          })
        });
  }

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
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
              if (_selected != null)
                Flexible(
                  flex: 5,
                  child: AnimatedBuilder(
                    child: _buildSelectPreView(),
                    animation: _openPreviewAnimation,
                    builder: (context, child) {
                      return FadeTransition(
                        opacity: _openPreviewAnimation,
                        child: Transform(
                          transform: Matrix4.translationValues(
                              0, 50 * (1.0 - _openPreviewAnimation.value), 0),
                          child: child,
                        ),
                      );
                    },
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
