import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:size_config/size_config.dart';

import 'categories.dart';

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
        body: SingleChildScrollView(
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
                    padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                    width: double.infinity,
                    height: 105,
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
                  Column(
                    children: [
                      SizedBox(height: getProportionateScreenWidth(5),),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(36)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Special for you', style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(45),
                            ),),
                            Text('See More', style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: getProportionateScreenWidth(30)
                            ),)
                          ],
                        ),
                      ),
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
                  Column(
                    children: [
                      SizedBox(height: getProportionateScreenWidth(50),),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(36)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Popular Products', style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(45),
                            ),),
                            Text('See More', style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: getProportionateScreenWidth(30)
                            ),)
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Container(
                                width: getProportionateScreenWidth(400),
                                padding: EdgeInsets.all(getProportionateScreenWidth(50)),
                                child: Column(
                                  children: [
                                    Container(
                                      width: getProportionateScreenWidth(350),
                                      height: getProportionateScreenWidth(300),
                                      padding: EdgeInsets.all(getProportionateScreenWidth(38)),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset('assets/images/Image Popular Product 1.png',),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Wireless Controller for PS4', maxLines: 2,
                                      style:
                                      TextStyle(color: Colors.black ,
                                      fontSize: getProportionateScreenWidth(30)),),
                                    SizedBox(height: 6,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$64.99', style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.w600,
                                          fontSize: getProportionateScreenWidth(35)
                                        ),),
                                        SizedBox(width: getProportionateScreenWidth(80),),
                                        InkWell(
                                          onTap: (){},
                                          borderRadius: BorderRadius.circular(30),
                                          child: Container(
                                            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                                            width: getProportionateScreenWidth(50),
                                            height: getProportionateScreenWidth(50),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              shape: BoxShape.circle
                                            ),
                                            child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',),                                        ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                width: getProportionateScreenWidth(400),
                                padding: EdgeInsets.all(getProportionateScreenWidth(50)),
                                child: Column(
                                  children: [
                                    Container(
                                      width: getProportionateScreenWidth(350),
                                      height: getProportionateScreenWidth(300),
                                      padding: EdgeInsets.all(getProportionateScreenWidth(38)),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset('assets/images/Image Popular Product 2.png',),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Nike Sport White - Man Pant', maxLines: 2,
                                      style:
                                      TextStyle(color: Colors.black ,
                                          fontSize: getProportionateScreenWidth(30)),),
                                    SizedBox(height: 6,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$50.5', style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.w600,
                                            fontSize: getProportionateScreenWidth(35)
                                        ),),
                                        SizedBox(width: getProportionateScreenWidth(80),),
                                        InkWell(
                                          onTap: (){},
                                          borderRadius: BorderRadius.circular(30),
                                          child: Container(
                                            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                                            width: getProportionateScreenWidth(50),
                                            height: getProportionateScreenWidth(50),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                                shape: BoxShape.circle
                                            ),
                                            child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',),                                        ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                width: getProportionateScreenWidth(400),
                                padding: EdgeInsets.all(getProportionateScreenWidth(50)),
                                child: Column(
                                  children: [
                                    Container(
                                      width: getProportionateScreenWidth(350),
                                      height: getProportionateScreenWidth(300),
                                      padding: EdgeInsets.all(getProportionateScreenWidth(38)),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset('assets/images/glap.png',),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Gloves XC Omega - Polygon', maxLines: 2,
                                      style:
                                      TextStyle(color: Colors.black ,
                                          fontSize: getProportionateScreenWidth(30)),),
                                    SizedBox(height: 6,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$36.5', style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.w600,
                                            fontSize: getProportionateScreenWidth(35)
                                        ),),
                                        SizedBox(width: getProportionateScreenWidth(80),),
                                        InkWell(
                                          onTap: (){},
                                          borderRadius: BorderRadius.circular(30),
                                          child: Container(
                                            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                                            width: getProportionateScreenWidth(50),
                                            height: getProportionateScreenWidth(50),
                                            decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                                shape: BoxShape.circle
                                            ),
                                            child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',),                                        ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: getProportionateScreenWidth(20),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Material(
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Shop Icon.svg'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Heart Icon.svg'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/User Icon.svg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
