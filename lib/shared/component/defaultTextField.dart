import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextField({
  required String labelText,
  required String hintText,
  required Icon icon,
  bool isEnabled = false,
}) =>
    TextField(
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
         // contentPadding: EdgeInsets.only(left: 8),
          prefixIcon:  icon,
          enabled: isEnabled,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.w500 ),
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),),
    );
