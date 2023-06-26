import 'package:flutter/material.dart';

import '../../size_config.dart';

class SectionText extends StatelessWidget {
  const SectionText({
    super.key,
   required this.text,
});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(36)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(45),
          ),),
          Text('See More', style: TextStyle(
              color: Colors.grey[500],
              fontSize: getProportionateScreenWidth(30)
          ),)
        ],
      ),
    );
  }
}
