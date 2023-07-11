import 'dart:convert';

import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/home/components/product_container.dart';
import 'package:e_commerce_app/modules/home/components/section_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../size_config.dart';

class PopularProducts extends StatefulWidget {
  PopularProducts({super.key,
    required this.product});
  //final int id;
  final Product product;

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late SharedPreferences prefs;
  List<Product> products = [];
  bool isFavorite = false;

  void saveToFavorite() async{
    prefs = await SharedPreferences.getInstance();
    List<String> productsEncoded = products.map((product) => jsonEncode(product.toJson())).toList();
    prefs.setStringList('products', productsEncoded);
  }


  @override
  void initState() {
    // TODO: implement initState
    saveToFavorite();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: getProportionateScreenWidth(350),
          height: getProportionateScreenWidth(300),
          padding:
          EdgeInsets.all(getProportionateScreenWidth(38)),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.network(widget.product.image),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.product.title,
          maxLines: 2,
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(30)),
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween,
          children: [
            Text(
              '\$${widget.product.price}',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(
                      35)),
            ),
            SizedBox(
              width: getProportionateScreenWidth(80),
            ),
            InkWell(
              onTap: () {
                setState(() {
                   if(!widget.product.isFavorite ){
                     products.add(widget.product);
                     saveToFavorite();
                     widget.product.isFavorite = true;
                     notifyListener();
                   } else {
                     products.remove(widget.product);
                     widget.product.isFavorite = false;
                     notifyListener();
                   }
                });
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: EdgeInsets.all(
                    getProportionateScreenWidth(10)),
                width: getProportionateScreenWidth(50),
                height: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                    color: widget.product.isFavorite ?  Color(0xFFFF7643).withOpacity(0.15)
                    :Color(0xFF979797).withOpacity(0.1),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/icons/Heart Icon_2.svg',
                  color:  widget.product.isFavorite ? Color(0xFFFF4848)
                  :Color(0xFFDBDEE4),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
