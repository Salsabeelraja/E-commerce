import 'package:e_commerce_app/ForgotPassword.dart';
import 'package:e_commerce_app/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SuccessScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool state = false;
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
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.all(18),
          child: Stack(
            children: [
              SizedBox(height: 16,),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Text('Welcome Back',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,),
                    SizedBox(height: 2,),
                    Text('Sign in with your email and password'
                        '\n or continue with Social Media',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Muli',
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,),
                    SizedBox(height: 50,),
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
                      ),
                    ),
                    SizedBox(height: 24,),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: Icon(Icons.lock_outline),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: state,
                              onChanged: (val) {
                                setState(() {
                                  state = val!;
                                });
                              },),
                            Text('Remember Me'),
                          ],
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerEnd,
                          child: TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ForgotPassword()),
                            );
                          },child: Text('Forgot Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                            ),)),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SuccessScreen()),
                        );
                      },
                      height: 50,
                      minWidth: 400,
                      child: Text('Continue',style: TextStyle(
                          fontSize: 18
                      ),),
                      textColor: Colors.white,
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          elevation: 0.09,
                          color: Colors.blueGrey.shade50,
                          child: SvgPicture.asset('assets/icons/google-icon.svg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          elevation: 0.09,
                          color: Colors.blueGrey.shade50,
                          child: SvgPicture.asset('assets/icons/facebook-2.svg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: CircleBorder(),
                          elevation: 0.09,
                          color: Colors.blueGrey.shade50,
                          child: SvgPicture.asset('assets/icons/twitter.svg'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?',
                          style: TextStyle(fontSize: 16),),
                        SizedBox(height: 0.5,),
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterScreen()),
                          );
                        },
                          child: Text('Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
