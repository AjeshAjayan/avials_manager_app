import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final Animation animation;

  Profile({this.animation});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map<String, dynamic> _user = {
    'fullname': 'Ajesh Ajayan',
    'place': 'Umayanalloor',
    'date_of_birth': '19/09/1997',
    'date_of_joining': '1/1/2021',
    'is_verified': true,
    'managers_assigned_places': 'Umayanalloor, Paravoor',
    'profile_pic': 'https://avatarfiles.alphacoders.com/152/thumb-152197.png'
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
                      image: _user['profile_pic'],
                    ).image,
                  ),
                ),
                _buildCardView(_user['fullname'], const Icon(Icons.person)),
                _buildCardView(_user['place'], const Icon(Icons.location_on)),
                _buildCardView('DOB: ' + _user['date_of_birth'],
                    const Icon(Icons.calendar_today)),
                _buildCardView('DOJ: ' + _user['date_of_birth'],
                    const Icon(Icons.calendar_today)),
                _buildCardView(
                  _user['is_verified'] ? 'Verified' : 'Not Verified',
                  const Icon(Icons.verified),
                ),
                _buildCardView(
                  'Assigned places:\n' + _user['managers_assigned_places'],
                  const Icon(Icons.place_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardView(String text, Icon icon) {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: Card(
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
}
