import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.product});
  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImg = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(460),
          child: Image.asset(widget.product.images[selectedImg],height: 150,),
        ),
        SizedBox(height: getProportionateScreenWidth(50),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                    (index) => createSmallImagesPreview(index),
            )
          ],
        )
      ],
    );
  }

  GestureDetector createSmallImagesPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImg = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(120),
        width: getProportionateScreenWidth(120),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(//0xFFFF7643
            color: Color(0xFFFF7643).withOpacity(selectedImg == index ? 1 : 0)
          )
        ),
        child: Image.asset(widget.product.images[index],),
      ),
    );
  }
}
