import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget defaultSocialButton({
  required String assetPath,
}) =>
    MaterialButton(
      onPressed: () {},
      shape: CircleBorder(),
      elevation: 0.09,
      color: Colors.blueGrey.shade50,
      child: SvgPicture.asset(assetPath),
    );
