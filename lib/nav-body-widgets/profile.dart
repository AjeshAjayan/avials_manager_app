import 'dart:convert';

import 'package:avilas_manager_app/apis/get_user_info.dart';
import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/data_keepers/user_data.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:avilas_manager_app/models/manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  final Animation animation;

  Profile({this.animation});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Manager _user;
  final FlutterSecureStorage _storage = new FlutterSecureStorage();

  @override
  void initState() {
    _user = UserData.manager;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return A_Animation1(
      animation: widget.animation,
      child: Container(
        child: Center(
          heightFactor: 1,
          child: FractionallySizedBox(
            widthFactor: AvialsManagerTheme.bodyWidthFactor,
            child: RefreshIndicator(
              onRefresh: _getUserInfo,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    AvialsManagerTheme.buildBodyHeader(
                      context,
                      'Profile',
                      const Icon(Icons.person),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: AvialsManagerTheme.secondaryBg,
                        radius: 50,
                        backgroundImage: FadeInImage.assetNetwork(
                          placeholder: AvialsManagerTheme.imageLoadingPlaceHolder,
                          image: _user.profile_pic?.formats?.thumbnail?.url ?? '',
                        ).image,
                      ),
                    ),
                    _buildCardView(_user.fullname, const Icon(Icons.person)),
                    _buildCardView(_user.place.title, const Icon(Icons.location_on)),
                    _buildCardView('DOB: ' + DateFormat.yMMMEd().format(DateTime.parse(_user.date_of_birth)),
                        const Icon(Icons.calendar_today)),
                    _buildCardView('DOJ: ' + DateFormat.yMMMEd().format(DateTime.parse(_user.date_of_joining)),
                        const Icon(Icons.calendar_today)),
                    _buildCardView(
                      _user.is_verified ? 'Verified' : 'Not Verified',
                      const Icon(Icons.verified),
                    ),
                    _buildCardView(
                      'Assigned places:\n' + _joinPlaceNames(),
                      const Icon(Icons.place_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardView(String text, Icon icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: icon,
            ),
            Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Text(text),
            )
          ],
        ),
      ),
    );
  }

  _joinPlaceNames() {
    String placeNames = '';
    for(int i = 0; i < UserData.manager.places.length; i ++) {
      placeNames = placeNames + '${UserData.manager.places[i].title ?? ''}, ';
    }
    return placeNames;
  }

  Future<void> _getUserInfo () async {
    Manager user = await getUserInfo(_user.users_permissions_user.id, context);
    await _storage.write(key: 'userData', value: jsonEncode(user.toJson()));
    setState(() => _user = user);
  }
}
