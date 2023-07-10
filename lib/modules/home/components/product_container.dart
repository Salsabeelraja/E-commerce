import 'dart:convert';

import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/details_screen/details_screen.dart';
import 'package:e_commerce_app/modules/home/components/popular_products.dart';
import 'package:e_commerce_app/modules/home/components/section_text.dart';
import 'package:e_commerce_app/modules/home/components/see_more_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';
import 'package:http/http.dart' as http;

class ProductContainer extends StatefulWidget {
  ProductContainer({
    super.key,
    //required this.product,
  });

  //final Product product;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  late Future<List<Product>> futureProduct;

  Future<List<Product>> fetchAlbum() async {
    var url = Uri.parse("https://fakestoreapi.com/products");

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var decodeData = json.decode(response.body) as List<dynamic>;

        List<Product> products =
        decodeData.map((json) => Product.fromJson(json)).toList();
        return products;
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
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenWidth(50),
        ),
        SectionText(text: 'Popular Products', function: (){
          Navigator.push(context, MaterialPageRoute(builder:
          (context) => SeeMoreProducts()));
        }),
        SizedBox(height: 20,),
        FutureBuilder(
            future: futureProduct,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data;
                return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data!.length == 0 ? 0 : 4,
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
                                            productId: data[index].id)));
                                  },
                                  child: PopularProducts(
                                      title: data[index].title,
                                      image: data[index].image,
                                      price: data[index].price),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    )
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
      ],
    );
  }

}
