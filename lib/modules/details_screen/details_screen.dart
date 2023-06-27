import 'package:flutter/material.dart';
import '../../models/Product.dart';
import 'components/Body.dart';
import 'components/CustomAppBar.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    //final DetailsArguments args = ModalRoute.of(context)!.settings.arguments as DetailsArguments;
    return Scaffold(
        backgroundColor:Color(0xF5F6F9FF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(rating: product.rating),
        ),
        body: Body(product: product),
    );
  }
}


/*class DetailsArguments {
  final Product product;

  DetailsArguments({required this.product});
}*/
