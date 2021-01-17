import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/nav-body-widgets/delivery_boy_details.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Delivery extends StatefulWidget {
  final Animation animation;

  Delivery({this.animation});

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> with TickerProviderStateMixin {
  Map _selected;
  bool _isDelivered = false;
  bool _isProcessed = false;
  bool _isDispatched = false;

  AnimationController _animationController;

  Animation _openPreviewAnimation;

  List<Map<String, dynamic>> _list = [
    {
      'name': 'Del boy one',
      'image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'place': 'PLACE ONE',
      'contact_number': '95545894565'
    },
    {
      'name': 'Del boy one',
      'image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'place': 'PLACE ONE',
      'contact_number': '95545894565'
    },
    {
      'name': 'Del boy one',
      'image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'place': 'PLACE ONE',
      'contact_number': '95545894565'
    },
    {
      'name': 'Del boy one',
      'image':
      'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
      'place': 'PLACE ONE',
      'contact_number': '95545894565'
    },
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
                'Delivery',
                Icon(Icons.shopping_bag_outlined),
              ),
              Flexible(
                flex: 2,
                child: _buildDeliveryList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDeliveryList() {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate((context, i) {
          return InkWell(
            splashColor: Theme.of(context).accentColor,
            onTap: _handleShopListClick,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.gif',
                      image: _list[i]['image'],
                      imageScale: 10,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Center(
                            child: Text(_list[i]['name']),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(_list[i]['place']),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(_list[i]['contact_number']),
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

  void _handleShopListClick() {
      MyHomePage.navBodyChange.value = DeliveryBoyDetails(
        animation: widget.animation,
      );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
