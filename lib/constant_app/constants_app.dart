import 'package:flutter/material.dart';

class ContsApp {
  static const titleText = "Fashion App";
  static TextStyle titleStyle = TextStyle(
      fontFamily: "Montserrat",
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.brown[800]);

  static const Text followProfileText = Text(
    "Ceren",
    style: TextStyle(
        fontFamily: "Montserrat", fontWeight: FontWeight.bold, fontSize: 15),
  );
  static const Text followProfileText2 = Text(
    "Eda",
    style: TextStyle(
        fontFamily: "Montserrat", fontWeight: FontWeight.bold, fontSize: 15),
  );
  static const Text followingHintText = Text(
    "23 dakika önce",
    style: TextStyle(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.bold,
        fontSize: 10,
        color: Colors.grey),
  );
  static const Text followText = Text(
    "Follow",
    style: TextStyle(
        fontFamily: "Montserrat",
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.bold),
  );

  static Color withpacityBrown = Colors.grey.withOpacity(0.3);
}
