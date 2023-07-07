import 'package:e_commerce_app/modules/login/LoginScreen.dart';
import 'package:e_commerce_app/shared/component/defaultButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/component/defaultSocialButton.dart';
import '../comlete_profile/Profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white24,
            leading:
            IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.arrow_back, size: 28,color: Colors.black,)),
          ),
          body: Container(
            margin: EdgeInsets.all(16),
            child: Stack(children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 18),
                    Text(
                      'Register Account',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3,),
                    Text(
                      'Complete your details or continue with social media',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontFamily: 'Muli'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.email_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 26),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 26),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Confirm Password',
                          hintText: 'Re-enter your password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    defaultButton(function:  () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (
                            context) => const CompleteProfile()),
                      );
                    }, text: 'Continue'),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultSocialButton(assetPath: 'assets/icons/google-icon.svg'),
                        SizedBox(
                          height: 2,
                        ),
                        defaultSocialButton(assetPath: 'assets/icons/facebook-2.svg'),
                        SizedBox(
                          height: 2,
                        ),
                        defaultSocialButton(assetPath: 'assets/icons/twitter.svg'),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'By continue your confirm that you agree \n'
                          'with our Terms and Conditions',
                      style: TextStyle(
                        //fontSize: 12,
                          color: Colors.grey,
                          fontFamily: 'Muli',),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
