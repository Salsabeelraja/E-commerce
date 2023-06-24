import 'package:e_commerce_app/ForgotPassword.dart';
import 'package:e_commerce_app/LoginScreen.dart';
import 'package:e_commerce_app/Profile.dart';
import 'package:e_commerce_app/SplashScreen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'RegisterScreen.dart';
import 'SuccessScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Muli'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
