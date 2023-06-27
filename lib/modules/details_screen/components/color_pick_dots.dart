import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/details_screen/components/rounded_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class ColorPickDots extends StatefulWidget {
  const ColorPickDots({super.key, required this.product});

  final Product product;

  @override
  State<ColorPickDots> createState() => _ColorPickDotsState();
}

class _ColorPickDotsState extends State<ColorPickDots> {
  int selectedColor = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: getProportionateScreenWidth(40),
    ),
      child: Row(
        children: [
          ...List.generate(widget.product.colors.length,
                  (index) => ColorDots( widget.product.colors[index],
                   index)),
          Spacer(),
          RoundedButton(icon: Icon(Icons.remove), press: () {}),
          SizedBox(width: getProportionateScreenWidth(20),),
          RoundedButton(icon: Icon(Icons.add), press: () {}),
        ],
      ),
    );
  }

  GestureDetector ColorDots(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenWidth(90),
        width: getProportionateScreenWidth(90),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Color(0xFFFF7643).withOpacity(selectedColor == index ? 1 : 0)),
            shape: BoxShape.circle
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}




