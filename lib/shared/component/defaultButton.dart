import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget defaultButton({
  double width = 400,
  Color background = Colors.deepOrange,
  required Function() function,
  required String text,
//double radius = 0.0
}) =>
    MaterialButton(
      height: 50,
      minWidth: width,
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      textColor: Colors.white,
      color: background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
