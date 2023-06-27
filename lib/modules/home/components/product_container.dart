import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/details_screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class ProductContainer extends StatelessWidget {
  ProductContainer({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(400),
      padding: EdgeInsets.all(getProportionateScreenWidth(50)),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailsScreen(product: product))),
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
              child: Image.asset(
                product.images[0],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(30)),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(35)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(80),
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    width: getProportionateScreenWidth(50),
                    height: getProportionateScreenWidth(50),
                    decoration: BoxDecoration(
                        color: product.isFavourite
                            ? Color(0xFF979797).withOpacity(0.1)
                            : Color(0xFFFF7643).withOpacity(0.15),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/Heart Icon_2.svg',
                      color: product.isFavourite
                          ? Color(0xFFDBDEE4)
                          : Color(0xFFFF4848),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
