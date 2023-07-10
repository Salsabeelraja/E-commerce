import 'package:e_commerce_app/modules/home/components/product_container.dart';
import 'package:e_commerce_app/modules/home/components/special_for_you.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'popular_products.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(46)),
                padding:  EdgeInsets.symmetric(vertical: 26, horizontal: 18),
                width: double.infinity,
                height: getProportionateScreenWidth(270),
                decoration: BoxDecoration(
                  color: Color(0xFF4A3298),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('A Summer Surprise', style: TextStyle(color: Colors.white),),
                    SizedBox(height: 8,),
                    Text('Cashback 20%' , style: TextStyle(
                        color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(60),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Categories()
              ),
              SizedBox(
                height: getProportionateScreenWidth(60),
              ),
              SpecialForYou(),
              ProductContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
