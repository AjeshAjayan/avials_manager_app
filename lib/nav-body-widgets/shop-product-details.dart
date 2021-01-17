import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-products.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShopProductDetails extends StatefulWidget {
  final Animation animation;
  final Map<String, dynamic> productDetails;

  ShopProductDetails({this.animation, this.productDetails});
  @override
  _ShopProductDetailsState createState() => _ShopProductDetailsState();
}

class _ShopProductDetailsState extends State<ShopProductDetails> {
  void _handleBackButtonCallBack() {
    MyHomePage.navBodyChange.value = ShopProducts(
      animation: widget.animation,
    );
  }

  Map<String, dynamic> product = {
    'productId': 1,
    'product': 'PROD ONE',
    'productImage':
        'https://hbr.org/resources/images/article_assets/2019/11/Nov19_14_sb10067951dd-001.jpg',
    'stock': '10',
    'sold': '8',
    'shop': 'SHOP ONE',
    'price': '150',
    'productImages': [
      'https://cdn2.stylecraze.com/wp-content/uploads/2013/05/10-Best-Body-Shop-Products-2019.jpg',
      'https://5.imimg.com/data5/OV/AT/LP/SELLER-10907102/the-body-shop-vitamin-c-moisturizer-500x500.jpg',
      'https://images-static.nykaa.com/media/catalog/product/b/s/bs-46913001_1_.jpg',
      'https://media1.popsugar-assets.com/files/thumbor/97UUezzEc9NNP_SR4FPq-xlBlIM/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/04/20/978/n/40039897/1c1673ea58f93637855806.06185626_3121042/i/Body-Shop-Drops-Youth-Liquid-Peel.JPG',
    ]
  };

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
                AvialsManagerTheme.buildBodyHeaderWithBackButton(
                  context,
                  'Shop Product Details',
                  const Icon(Icons.star_purple500_outlined),
                  _handleBackButtonCallBack,
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverAppBar(
                            backgroundColor: AvialsManagerTheme.secondaryBg,
                            expandedHeight: 170.0,
                            floating: true,
                            pinned: true,
                            snap: true,
                            elevation: 50,
                            flexibleSpace: FlexibleSpaceBar(
                              centerTitle: true,
                              title: Text(
                                widget.productDetails['product'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              background: _buildCarouselSlider(),
                              // Image.network(
                              //   product['productImage'],
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          new SliverList(
                            delegate: SliverChildListDelegate(_buildList()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List _buildList() {
    List<Widget> listItems = List();

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.description),
      'this is description of shop this is description of product this is description of product this is description of product',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.store),
      'Shop One',
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
      Icon(Icons.next_plan),
      'Plan: Premium',
    ));

    return listItems;
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

  CarouselSlider _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
      ),
      items: product['productImages'].map<Widget>((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              child: FadeInImage.assetNetwork(
                placeholder: AvialsManagerTheme.imageLoadingPlaceHolder,
                image: i,
                fit: BoxFit.fill,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
