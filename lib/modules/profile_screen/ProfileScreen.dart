import 'package:e_commerce_app/modules/profile_screen/profile_settings.dart';
import 'package:e_commerce_app/shared/component/defaultButton.dart';
import 'package:e_commerce_app/shared/component/defaultTextField.dart';
import 'package:flutter/material.dart';

import '../../shared/component/custom_bottom_nav.dart';
import '../../shared/component/enums.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEnabled = false;
  int index = 0;
  String btnText = 'Edit Profile';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    //padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 72,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.only(bottomLeft: Radius.elliptical(70,12) ,
                            bottomRight: Radius.elliptical(360,80)),
                        color: Color(0x45F58C6A)),
                  ),
                  Container(
                    //padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 67,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.only(bottomRight: Radius.elliptical(70,12) ,
                            bottomLeft: Radius.elliptical(450,100)),
                        color: Color(0xBDF58760)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 26,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text(
                            'Profile',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          SizedBox(width: 8,),
                          IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProfileSettings())
                              );
                            },
                            icon: Icon(Icons.settings),
                            color: Colors.black,
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Stack(children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset('assets/images/Profile Image.png'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.deepOrange[300],
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            defaultTextField(
                              isEnabled: isEnabled,
                              labelText: 'Full Name',
                              hintText: 'Ali Ahmad',
                              icon: Icon(
                                Icons.person_outline,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            defaultTextField(
                              isEnabled: isEnabled,
                              labelText: 'Email',
                              hintText: 'example@gmail.com',
                              icon: Icon(
                                Icons.email_outlined,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            defaultTextField(
                              isEnabled: isEnabled,
                              labelText: 'Phone Number',
                              hintText: '+96278*******',
                              icon: Icon(
                                Icons.phone_android,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            defaultTextField(
                              isEnabled: isEnabled,
                              labelText: 'Address',
                              hintText: 'Amman-Jordan',
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            defaultTextField(
                              isEnabled: isEnabled,
                              labelText: 'Password',
                              hintText: '********',
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            defaultButton(function: () {
                              setState(() {
                                if (index == 0) {
                                  isEnabled = true;
                                  btnText = 'Save Changes';
                                  index = 1;
                                } else {
                                  isEnabled = false;
                                  btnText = 'Edit Profile';
                                  index = 0;
                                }
                              });
                            }, text: btnText),
                            SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNav(menu: MenuState.profile),
      ),
    );
  }
}

