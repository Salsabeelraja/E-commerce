import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';
import 'components/custom_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white12,
          elevation: 0,
          leadingWidth: 400,
          leading: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth * 0.6, //60% of our width
                      //height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15),
                        //or 400
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search Product',
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(10),
                              vertical: getProportionateScreenWidth(26),
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      splashColor: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(26)),
                        height: getProportionateScreenWidth(100),
                        width: getProportionateScreenWidth(100),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      splashColor: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                      child: Stack(
                        clipBehavior: Clip.none,
                          children: [
                        Container(
                          padding: EdgeInsets.all(getProportionateScreenWidth(26)),
                          height: getProportionateScreenWidth(100),
                          width: getProportionateScreenWidth(100),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset('assets/icons/Bell.svg'),
                        ),
                        Positioned(
                          top: -4,
                          right: 0,
                          child: Container(
                            width: getProportionateScreenWidth(40),
                            height: getProportionateScreenWidth(40),
                            decoration: BoxDecoration(
                              color: Color(0xFFFF4848),
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(20),
                                  height: 1,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Body(),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
