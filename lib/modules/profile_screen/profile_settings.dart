import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
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
                          Text(
                            'Settings',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          SizedBox(width: 18,),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFFFF7643),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/User Icon.svg',
                        color: Color(0xFFFF7643),
                        width: 22,
                      ),
                      SizedBox(width: 20),
                      Expanded(child: Text("My Account")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFFFF7643),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Bell.svg',
                        color: Color(0xFFFF7643),
                        width: 22,
                      ),
                      SizedBox(width: 20),
                      Expanded(child: Text("Notifications")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFFFF7643),
                    padding: EdgeInsets.all(20),
                    shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Settings.svg',
                        color: Color(0xFFFF7643),
                        width: 22,
                      ),
                      SizedBox(width: 20),
                      Expanded(child: Text("General Settings")),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Color(0xFFFF7643),
            padding: EdgeInsets.all(20),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xFFF5F6F9),
          ),
          onPressed: (){},
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/Question mark.svg',
                color: Color(0xFFFF7643),
                width: 22,
              ),
              SizedBox(width: 20),
              Expanded(child: Text("Help Center")),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Color(0xFFFF7643),
            padding: EdgeInsets.all(20),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color(0xFFF5F6F9),
          ),
          onPressed: (){},
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/Log out.svg',
                color: Color(0xFFFF7643),
                width: 22,
              ),
              SizedBox(width: 20),
              Expanded(child: Text("LogOut")),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
            ],
          ),
        ));
  }
}
