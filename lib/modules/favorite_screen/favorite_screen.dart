
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/Product.dart';
import '../../shared/component/custom_bottom_nav.dart';
import '../../shared/component/enums.dart';
import '../details_screen/details_screen.dart';
import '../home/components/popular_products.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late SharedPreferences prefs;
  List<Product> favProducts = [];

  loadPreferences() async {
    prefs = await SharedPreferences.getInstance();
    getProducts();
  }

 Future<List<Product>?> getProducts() async {
   //prefs = await SharedPreferences.getInstance();
   final products = prefs.getStringList('products');
   if (products != null) {
     setState(() {
       favProducts =
           products.map((product) => Product.fromJson(json.decode(product))).toList();
     });
    }
 }

  @override
  void initState() {
    // TODO: implement initState
    loadPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'WishList',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.4,
            ),
            itemCount: favProducts.length,
            itemBuilder: (context, index) {
              return Container(
                  width: 150,
                  padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder:
                          (context) =>
                          DetailsScreen(
                              productId: favProducts[index].id)));
                    },
                    child: PopularProducts(product: favProducts[index]),
                  ));
            },
          )),
      bottomNavigationBar: CustomBottomNav(menu: MenuState.favorite),
    );
  }
}
