import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:avilas_manager_app/data_keepers/user_data.dart';
import 'package:avilas_manager_app/generic-widgets/A_Animation1.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final Animation animation;

  Profile({this.animation});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  _joinPlaceNames() {
    String placeNames = '';
    for(int i = 0; i < UserData.manager.places.length; i ++) {
      placeNames = placeNames + '${UserData.manager.places[i].title ?? ''}, ';
    }
    return placeNames;
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
                      image: UserData.manager.profile_pic.formats.thumbnail.url ?? '',
                    ).image,
                  ),
                ),
                _buildCardView(UserData.manager.fullname, const Icon(Icons.person)),
                _buildCardView(UserData.manager.place.title, const Icon(Icons.location_on)),
                _buildCardView('DOB: ' + UserData.manager.date_of_birth,
                    const Icon(Icons.calendar_today)),
                _buildCardView('DOJ: ' + UserData.manager.date_of_joining,
                    const Icon(Icons.calendar_today)),
                _buildCardView(
                  UserData.manager.is_verified ? 'Verified' : 'Not Verified',
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
