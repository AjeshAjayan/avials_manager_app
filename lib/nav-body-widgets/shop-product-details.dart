import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/nav-body-widgets/shop-products.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ShopProductDetails extends StatefulWidget {
  final Animation animation;
  final int shopProductId;

  ShopProductDetails({this.animation, this.shopProductId});
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
    'price': '150'
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
