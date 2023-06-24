import 'package:e_commerce_app/modules/forgot_password/ForgotPassword.dart';
import 'package:e_commerce_app/modules/login/LoginScreen.dart';
import 'package:e_commerce_app/modules/profile/Profile.dart';
import 'package:e_commerce_app/modules/splash/SplashScreen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'modules/register/RegisterScreen.dart';
import 'modules/success/SuccessScreen.dart';

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
