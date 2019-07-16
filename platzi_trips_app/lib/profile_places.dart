import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class ProfilePlaces extends StatelessWidget{

  String imagePath = "assets/images/beach.jpeg";
  String placeName = "Beach Sisal";
  String placeDescription = "Hermosas playas ubicadas en el \n"
      "hermoso estado de Yucatán";
  String placeDistance = "Distancia 64 kms.";

  ProfilePlaces(this.imagePath, this.placeName, this.placeDescription, this.placeDistance);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final imageCard = Container(
        height: 211.0,
        margin: EdgeInsets.only(
          left: 15.0,
          right: 15,
        ),
        decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imagePath)
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0)
              )
            ]
        )
    );

    final imageCardText = Container(
      height: 98.883,
      width: 251,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
          )
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(
                placeName,
                style: TextStyle(
                  color: Color(0xFF231F20),
                  fontWeight: FontWeight.w900,
                  fontSize: 16.23,
                ),
              ),
            ),
            Expanded(
              child: Text(
                placeDescription,
                style: TextStyle(
                    color: Color(0xFF808285),
                    fontSize: 9,
                    fontWeight: FontWeight.w100
                ),
              ),
            ),
            Expanded(
              child: Text(
                placeDistance,
                style: TextStyle(
                    color: Color(0xFFF7941E),
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),

          ],
        ),
      ),
    );

    return Container(
        margin: EdgeInsets.only(bottom: 100),
        child: Stack(
          alignment: Alignment(0, 1.8),
          children: <Widget>[
            imageCard,
            imageCardText,
            Container(
              alignment: Alignment(0.5, 1.0),
              child: FloatingActionButtonGreen(),
            ),
          ],
        )
    );
  }

}