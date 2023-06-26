import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/home/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';
import 'section_text.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenWidth(50),
        ),
        SectionText(text: 'Popular Products'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                demoProducts.length ,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductContainer(product: demoProducts[index]);

                  return SizedBox.shrink();
                },
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
