import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/shared/component/defaultButton.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'color_pick_dots.dart';
import 'product_desc.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(color: Colors.white,
        child: Column(
          children: [
            ProductDesc(
              product: product,
              pressSeeMore: () {},
            ),
            TopRoundedContainer(color: Color(0xFFF6F7F9),
            child: Column(
              children: [
                ColorPickDots(product: product),
                TopRoundedContainer(
                    color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.15,
                      right: SizeConfig.screenWidth * 0.15,
                      bottom: getProportionateScreenWidth(30),
                      top: getProportionateScreenWidth(45),
                    ),
                  child: defaultButton(function: () {}, text: 'Add To Cart'),
                ))
              ],
            )
            ),
          ],
        )),
      ],
    );
  }
}
