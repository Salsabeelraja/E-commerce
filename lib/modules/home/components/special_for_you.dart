import 'package:e_commerce_app/modules/home/components/section_text.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(5),),
          SectionText(text: 'Special for you'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenWidth(30),
                      left: getProportionateScreenWidth(48)),
                  child: Stack(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(450),
                        height: getProportionateScreenWidth(220),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Image.asset('assets/images/Image Banner 2.png',
                          fit: BoxFit.cover,),
                      ),
                      Container(
                        width: getProportionateScreenWidth(450),
                        height: getProportionateScreenWidth(220),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF343434).withOpacity(0.6),
                              Color(0xFF343434).withOpacity(0.19),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25),
                              vertical: getProportionateScreenWidth(25)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Smartphone', style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold, fontSize: getProportionateScreenWidth(34)),),
                              SizedBox(height: 8,),
                              Text('18 Brands' , style: TextStyle(
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenWidth(25),
                      left: getProportionateScreenWidth(40)),
                  child: Stack(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(450),
                        height: getProportionateScreenWidth(225),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset('assets/images/Image Banner 3.png',
                          fit: BoxFit.cover,),
                      ),
                      Container(
                        width: getProportionateScreenWidth(450),
                        height: getProportionateScreenWidth(230),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF343434).withOpacity(0.6),
                              Color(0xFF343434).withOpacity(0.19),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25),
                              vertical: getProportionateScreenWidth(25)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fashion', style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold, fontSize: getProportionateScreenWidth(34)),),
                              SizedBox(height: 8,),
                              Text('24 Brands' , style: TextStyle(
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(40),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
