import 'package:e_commerce_app/modules/home/HomeScreen.dart';
import 'package:e_commerce_app/modules/profile_screen/ProfileScreen.dart';
import 'package:e_commerce_app/shared/component/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../modules/favorite_screen/favorite_screen.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key,
  required  this.menu});

  final MenuState menu;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          //color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: SvgPicture.asset('assets/icons/Shop Icon.svg',
                color: menu == MenuState.home
                    ? Colors.deepOrange
                    : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteScreen()));
              },
              icon: SvgPicture.asset('assets/icons/Heart Icon.svg',
                color: menu == MenuState.favorite
                    ? Colors.deepOrange
                    : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              icon: SvgPicture.asset('assets/icons/User Icon.svg',
               color: menu == MenuState.profile
                ? Colors.deepOrange
                : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
