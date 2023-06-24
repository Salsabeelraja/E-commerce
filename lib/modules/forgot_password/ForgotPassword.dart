import 'package:e_commerce_app/modules/login/LoginScreen.dart';
import 'package:e_commerce_app/modules/register/RegisterScreen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              Column(
                children: [
                  SizedBox(height: 40,),
                  Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 2,),
                  Text('Please enter your email and we will'
                      'send \n you a link to return your account',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Muli',
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 70,),
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
                  SizedBox(height: 90,),
                  MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
