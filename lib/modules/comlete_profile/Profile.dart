import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';
import '../success/SuccessScreen.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
           // backgroundColor: Colors.white24,
            leading:
            IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.arrow_back, size: 28,color: Colors.black,)),
          ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(14),
            child: Stack(children: [
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35),
                    Text(
                      'Complete CompleteProfile',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3,),
                    Text(
                      'Complete your details or continue \n with social media',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontFamily: 'Muli',),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.person_outline),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'First Name',
                          hintText: 'Enter your first name',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.person_outline),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Last Name',
                          hintText: 'Enter your last name',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.smartphone_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.streetAddress,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.location_on_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Address',
                          hintText: 'Enter your address',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                        );
                      },
                      height: 50,
                      minWidth: 400,
                      child: Text('Continue' ,
                      style:TextStyle(fontSize: 18,)),
                      textColor: Colors.white,
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'By continue you confirm that you agree \n '
                          'with our Terms and Conditions',
                      style: TextStyle(
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
