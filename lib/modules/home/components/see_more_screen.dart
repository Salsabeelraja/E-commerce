import 'dart:convert';

import 'package:e_commerce_app/modules/details_screen/details_screen.dart';
import 'package:e_commerce_app/modules/home/components/popular_products.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';
import 'package:http/http.dart' as http;

class SeeMoreProducts extends StatefulWidget {
  const SeeMoreProducts({super.key});

  @override
  State<SeeMoreProducts> createState() => _SeeMoreProductsState();
}

class _SeeMoreProductsState extends State<SeeMoreProducts> {
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
    } catch (e) {
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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'All Products',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      body: FutureBuilder(
          future: futureProduct,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              return Padding(
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1 / 1.4,
                    ),
                    itemCount: data!.length,
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
                          child: PopularProducts(product: data[index]),
                      ));
                    },
              ));
            } else if (snapshot.hasError) {
              return Icon(Icons.error);
            } else
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.red,
              ));
          }),
    );
  }
}
