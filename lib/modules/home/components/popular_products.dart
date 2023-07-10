import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/home/components/product_container.dart';
import 'package:e_commerce_app/modules/home/components/section_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key,
    required this.title,
  required this.image,
  required this.price,
  });
  bool isFavorite = false;
  List<Product> favoriteItems = [];

  //final int id;
  final String title;
  final String image;
  final double price;

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
          child: Image.network(image),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
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
              '\$${price}',
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
                  if (product.isFavorite) {
                    favoriteItems.remove(product);
                  } else {
                    favoriteItems.add(product);
                  }
                  product.isFavorite = !product.isFavorite;
                });

              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: EdgeInsets.all(
                    getProportionateScreenWidth(10)),
                width: getProportionateScreenWidth(50),
                height: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                    color: /* product.isFavourite
                                        ? Color(0xFF979797).withOpacity(0.1)
                                        :*/
                    Color(0xFFFF7643).withOpacity(0.15),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/icons/Heart Icon_2.svg',
                  color: /* product.isFavourite
                                      ? Color(0xFFDBDEE4)
                                      :*/
                  Color(0xFFFF4848),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
