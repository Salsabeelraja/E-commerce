/*
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Make network request
//Covert http response inside album
Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products/"),
  );

  if (response.statusCode == 200) {
    return Album.fromJson(
      jsonDecode(response.body),
    );
  } else {
    throw Exception("Field load Album");
  }
}

// Create album class (model)
class Album {
  final int id;
  // final int userId;
  final String titel;

  const Album({
    required this.id,
    // required this.userId,
    required this.titel,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      // userId: json['userId'],
      titel: json['title'],
    );
  }
}

void main() {
  runApp(const MyHomePage(title: "APIHandel"));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    futureAlbum = fetchAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'The data from API',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: Checkbox.width,
              ),
              FutureBuilder(
                builder: (context, snapshot) {
                  // assignment what is a snapshot
                  if (snapshot.hasData) {
                    return Text(
                      "Title:\t\t\t\t ${snapshot.data!.titel}  \n\nId:\t\t\t\t\t\t\t\t\t\t ${snapshot.data!.id}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }  else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    );
                  }
                },
                future: futureAlbum,
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
