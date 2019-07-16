import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/people2.jpg", "Arturo", "4 review ° 8 photos", "It's very interesting these places!"),
        Review("assets/images/1 (1).jpeg", "Diego", "1 review ° 2 photos", "Excelent"),
        Review("assets/images/people.jpg", "Diego Ulises", "3 review ° 2 photos", "Nice!"),
        Review("assets/images/1 (2).jpeg", "Ulises", "1 review ° 1 photo", "Good place"),
        Review("assets/images/1 (3).jpeg", "Checo", "2 reviews ° 5 photos", "I thing that it's ok, but no it's cool")
      ],
    );
  }
}

