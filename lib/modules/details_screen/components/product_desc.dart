import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/Product.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({super.key, required this.title, this.pressSeeMore});

  final String title;
  final GestureTapCallback? pressSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(45)),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(30)),
            width: getProportionateScreenWidth(130),
            decoration: BoxDecoration(
                color: /*product.isFavourite ?  Color(0xFFF5F6F9) :*/ Color(0xFFFFE6E6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
            ),
            child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',
              color: /*product.isFavourite ? Color(0XFFDBDEE4) :*/ Color(0XFFFF4848),
              height: getProportionateScreenWidth(36),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(
            left: getProportionateScreenWidth(26),
            right: getProportionateScreenWidth(70)
        ),
          child: Text(title,maxLines: 3,),
        ),
        Padding(padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(26),
          vertical: 15,
        ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text('See More Detail',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xFFFF7643)
                  ),),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,
                  size: 12,
                  color: Color(0xFFFF7643),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
