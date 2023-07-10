import 'dart:convert';

import 'package:e_commerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../shared/component/defaultButton.dart';
import '../../size_config.dart';
import 'components/CustomAppBar.dart';
import 'components/product_desc.dart';
import 'components/product_images.dart';
import 'components/top_rounded_container.dart';

class DetailsScreen extends StatefulWidget {
  final int productId;
  const DetailsScreen({required this.productId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Future<Product> futureProduct;

  Future<Product> fetchAlbum() async {
    var url = Uri.parse("https://fakestoreapi.com/products/${widget.productId}");

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {

        return Product.fromJson(jsonDecode(response.body));

      } else {
        throw Exception('Error');
      }
    }
    catch (e) {
      throw Exception("Error: $e");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProduct = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xF5F6F9FF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: 4.5),
      ),
      body: FutureBuilder<Product>(
          future: futureProduct,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              return ListView(
                children: [
                  ProductImages(image: data!.image),
                  TopRoundedContainer(color: Colors.white,
                      child: Column(
                        children: [
                          ProductDesc(
                            title: data.title,
                            pressSeeMore: () {},
                          ),
                          TopRoundedContainer(color: Color(0xFFF6F7F9),
                              child: Column(
                                children: [
                                  //ColorPickDots(product: product),
                                  TopRoundedContainer(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: SizeConfig.screenWidth * 0.15,
                                          right: SizeConfig.screenWidth * 0.15,
                                          bottom: getProportionateScreenWidth(30),
                                          top: getProportionateScreenWidth(45),
                                        ),
                                        child: defaultButton(function: () {}, text: 'Add To Cart'),
                                      ))
                                ],
                              )
                          ),
                        ],
                      )),
                ],
              );
            } else if (snapshot.hasError) {
              return Icon(Icons.error);
            } else
              return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ));
          }
      ),
    );
  }
}




