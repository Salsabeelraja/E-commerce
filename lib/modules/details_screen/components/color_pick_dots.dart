import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/details_screen/components/rounded_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class ColorPickDots extends StatefulWidget {
  const ColorPickDots({super.key});

  @override
  State<ColorPickDots> createState() => _ColorPickDotsState();
}

class _ColorPickDotsState extends State<ColorPickDots> {
  List<Color> colors = [
    Color(0xFFF6625E),
    Color(0xFF836DB8),
    Color(0xFFDECB9C),
    Colors.white,];
  int selectedColor = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: getProportionateScreenWidth(40),
    ),
      child: Row(
        children: [
          ...List.generate(colors.length,
                  (index) => ColorDots(colors[index],
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




