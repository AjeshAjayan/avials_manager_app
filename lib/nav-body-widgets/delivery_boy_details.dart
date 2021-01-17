import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/nav-body-widgets/delivery.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DeliveryBoyDetails extends StatefulWidget {
  final Animation animation;

  DeliveryBoyDetails({this.animation});
  @override
  _DeliveryBoyDetailsState createState() => _DeliveryBoyDetailsState();
}

class _DeliveryBoyDetailsState extends State<DeliveryBoyDetails> {
  Map<String, dynamic> _deliveryPartnerDetails = {
    'fullname': 'Ajesh Ajayan',
    'shop_user': 'SHOP ONE, SHOP TWO',
    'place': 'Umayanallor, Kollam',
    'address': 'Ajesh bhavan, Naduvilakara',
    'contact_number': '9544718663',
    'status': 'Active',
    'qualification': 'BCA',
    'checkin': '15/1/2021 08.58 am',
    'checkout': '14/1/2021 06.00 pm',
    'image':
        'https://pixomatic.us/blog/wp-content/uploads/2019/11/pixomatic_1572877090227.png',
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
                    'Delivery Boy',
                    const Icon(Icons.person),
                    _handleBackButtonClick),
                Expanded(
                  child: Card(
                    child: Container(
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverAppBar(
                            actions: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Chip(
                                  backgroundColor:
                                      Theme.of(context).accentColor,
                                  label: Text(
                                    _deliveryPartnerDetails['status'],
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                              ),
                            ],
                            expandedHeight: 170.0,
                            floating: true,
                            pinned: true,
                            snap: true,
                            elevation: 50,
                            flexibleSpace: FlexibleSpaceBar(
                              centerTitle: true,
                              title: Text(
                                _deliveryPartnerDetails['fullname'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              background: Image.network(
                                _deliveryPartnerDetails['image'],
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
                ),
                Visibility(
                  visible: false,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Attendance'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text('Leave / Time off'),
                      ),
                    ],
                  ),
                )
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
      Icon(Icons.check_circle),
      'check in: ' + _deliveryPartnerDetails['checkin'],
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.exit_to_app),
      'check out ' + _deliveryPartnerDetails['checkout'],
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.location_on),
      _deliveryPartnerDetails['place'],
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.home),
      _deliveryPartnerDetails['address'],
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.store),
      'Shops:\n${_deliveryPartnerDetails['shop_user']}',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Total deliveries: 78',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Pending deliveries: 10',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Completed deliveries: 68',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.shopping_bag_outlined),
      'Completed deliveries: 68',
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.school),
      _deliveryPartnerDetails['qualification'],
    ));

    listItems.add(_buildShopDetailsCard(
      Icon(Icons.phone),
      _deliveryPartnerDetails['contact_number'],
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

  void _handleBackButtonClick() {
    MyHomePage.navBodyChange.value = Delivery(
      animation: widget.animation,
    );
  }
}
