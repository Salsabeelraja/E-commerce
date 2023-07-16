
import 'package:e_commerce_app/modules/splash/SplashScreen.dart';
import 'package:e_commerce_app/shared/styles/theme.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      theme: ThemeClass.ligthTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
