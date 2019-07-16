import 'package:flutter/material.dart';
import 'profile_abbpar.dart';
import 'profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ProfileAppBar("Profile"),
        ProfilePlacesList()
      ],
    );
  }

}