import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget{

  String title = "Popular";

  ProfileAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final profileTitle = Container(
      margin: EdgeInsets.only(
          top: 37.0,
          left: 30.0
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Lato",
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                right: 20.0,
                top: 40.0
            ),
            child: Icon(
                Icons.settings,
                color: Color.fromRGBO(255, 255, 255, 0.5),
                size: 17.0
            ),
          )
        ],
      ),
    );

    final profilePicture = Container(
      margin: EdgeInsets.only(
          right: 20.0
      ),
      width: 77,
      height: 77,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2.5
          ),
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/people.jpg"),
          )
      ),
    );

    final profileInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Diego Ulises Martínez",
          style: TextStyle(
              color: Colors.white,
              fontSize: 17.33
          ),
        ),
        Text(
          "diego.ulises@gmail.com",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.32),
              fontSize: 13.19
          ),
        )
      ],
    );


    final profileName = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 30.0
      ),
      child: Row(
        children: <Widget>[
          profilePicture,
          profileInfo
        ],
      ),
    );

    final profileActionButtons = InkWell(
        child: Container(
            margin: EdgeInsets.only(
                top: 20.0,
                left: 15.0,
                right: 15.0
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Icon(
                        Icons.bookmark_border,
                        size: 17.0,
                        color: Color.fromRGBO(66, 104, 211, 1)
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Icon(
                        Icons.calendar_today,
                        size: 17.0,
                        color: Color.fromRGBO(66, 104, 211, 1)
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 51,
                    height: 51,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Icon(
                        Icons.add,
                        size: 34.0,
                        color: Color.fromRGBO(66, 104, 211, 1)
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Icon(
                        Icons.email,
                        size: 17.0,
                        color: Color.fromRGBO(66, 104, 211, 1)
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Icon(
                        Icons.person,
                        size: 17.0,
                        color: Color.fromRGBO(66, 104, 211, 1)
                    ),
                  ),
                ),
              ],
            )
        )
    );


    return Container(
        height: 374.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/gradiente.jpg"
                )
            )
        ),
        child: Column(
          children: <Widget>[
            profileTitle,
            profileName,
            profileActionButtons
          ],
        )
    );
  }
}