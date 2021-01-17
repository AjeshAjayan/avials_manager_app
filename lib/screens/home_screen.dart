import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/nav-body-widgets/profile.dart';
import 'package:avilas_manager_app/nav-body-widgets/delivery.dart';
import 'package:avilas_manager_app/nav-body-widgets/orders.dart';
import 'package:avilas_manager_app/nav-body-widgets/shops.dart';
import 'package:avilas_manager_app/notification-helper.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class MyHomePage extends StatefulWidget {
  static ValueNotifier navBodyChange = new ValueNotifier<Widget>(null);
  static ValueNotifier showBadge = new ValueNotifier<bool>(true);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  AnimationController _animationController;
  Animation _animation;
  Widget _navBody;
  bool _showFloatingButton = false;

  @override
  void initState() {
    MyHomePage.navBodyChange.addListener(_navBodyChangeListener);

    _animationController = AnimationController(
      reverseDuration: const Duration(milliseconds: 600),
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.fastOutSlowIn,
    ));

    // set nav index for first time
    this._changeNavBody(Orders(
      animation: _animation,
    ));

    // Notification
    NotificationHelper _notificationHelper = NotificationHelper();
    _notificationHelper.handleBackGroundMessage();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avials - Manager'),
        elevation: 5,
        actions: [_appBarNotification()],
      ),
      body: _navBody,
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: Visibility(
        visible: _showFloatingButton,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _appBarNotification() {
    return InkWell(
      onTap: _handleNotificationClick,
      borderRadius: AvialsManagerTheme.splashRadius,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Badge(
          toAnimate: true,
          elevation: 5,
          animationType: BadgeAnimationType.slide,
          animationDuration: const Duration(milliseconds: 800),
          position: BadgePosition.topEnd(top: 5, end: -6),
          badgeColor: Theme.of(context).accentColor,
          badgeContent: Text('5', style: Theme.of(context).textTheme.subtitle1),
          showBadge: MyHomePage.showBadge.value,
          child: Icon(Icons.notifications),
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Shops',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_bike_outlined),
          label: 'Delivery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) => _handleNavClick(index),
    );
  }

  Future<void> _changeNavBody(Widget widget) async {
    await this._animationController.reverse();
    setState(() {
      this._animationController.forward();
      _navBody = widget;
      _showFloatingButton = false;
    });
    return;
  }

  void _handleNavClick(int index) {
    if (_currentIndex == index) return;
    _currentIndex = index;

    switch (index) {
      case 0:
        _changeNavBody(Orders(
          animation: _animation,
        ));
        break;
      case 1:
        _changeNavBody(Shops(
          animation: _animation,
        ));
        break;
      case 2:
        _changeNavBody(Delivery(
          animation: _animation,
        )).then((value) => _handleFloatingButtonVisibility(false));
        break;
      case 3:
        _changeNavBody(Profile(
          animation: _animation,
        ));
        break;
    }
  }

  void _handleFloatingButtonVisibility(bool value) {
    setState(() {
      _showFloatingButton = value;
    });
  }

  void _navBodyChangeListener() {
    _changeNavBody(MyHomePage.navBodyChange.value);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleNotificationClick() {
    showDialog(context: context, builder: (_) => AvialsManagerTheme.buildOnDevelopmentAlert(context));
  }
}
