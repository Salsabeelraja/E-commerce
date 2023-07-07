import 'dart:convert';

import 'package:e_commerce_app/models/Product.dart';
import 'package:e_commerce_app/modules/details_screen/details_screen.dart';
import 'package:e_commerce_app/modules/home/components/section_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';
import 'package:http/http.dart' as http;

class ProductContainer extends StatefulWidget {
  ProductContainer({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  late Future<List<Product>> futureProduct;

  Future<List<Product>> fetchAlbum() async {
    var url = Uri.parse('https://fakestoreapi.com/products');
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProduct = fetchAlbum() as Future<List<Product>>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(50),
          ),
          SectionText(text: 'Popular Products'),
          FutureBuilder(
              future: futureProduct,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          data!.length ,
                              (index) {
                              return ItemsContainer(data[index]);
                          },
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        )
                      ],
                    ),
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
      ),
    );
  }

  Widget ItemsContainer(Product snapshot) {

    return Container(
      width: getProportionateScreenWidth(400),
      padding: EdgeInsets.all(getProportionateScreenWidth(50)),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(product: snapshot))),
        child: Column(
          children: [
            Container(
              width: getProportionateScreenWidth(350),
              height: getProportionateScreenWidth(300),
              padding:
              EdgeInsets.all(getProportionateScreenWidth(38)),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(snapshot.image),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              snapshot.title,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(30)),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${snapshot.price}',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(35)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(80),
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.all(
                        getProportionateScreenWidth(10)),
                    width: getProportionateScreenWidth(50),
                    height: getProportionateScreenWidth(50),
                    decoration: BoxDecoration(
                        color: /* product.isFavourite
                                      ? Color(0xFF979797).withOpacity(0.1)
                                      :*/
                        Color(0xFFFF7643).withOpacity(0.15),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/Heart Icon_2.svg',
                      color: /* product.isFavourite
                                    ? Color(0xFFDBDEE4)
                                    :*/
                      Color(0xFFFF4848),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}

/*ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) => Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: 50,
                            child: Image.network(data[index].image),
                          ),
                          title: Text(data[index].title),
                          subtitle: Text(data[index].price as String),

                        ),
                        Divider()
                      ]));*/


