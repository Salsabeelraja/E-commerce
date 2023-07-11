import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String image;
   bool isFavorite;
  final double price;
  //final double rate;

  Product({
    required this.id,
    required this.title,
    required this.image,
    this.isFavorite = false,
    required this.price,
   // required this.rate,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: double.parse(json['price'].toString()),
     // rate: double.parse(json['rate'].toString()),
    );
  }

  Map toJson() {
    return {
      'id': this.id,
      'title': this.title,
      'image': this.image,
      'price': this.price,
    };
  }


}

