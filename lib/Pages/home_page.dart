import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Image.network(
          "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
          height: 300,
          width: 400,
        )),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 36, 139, 230),
        child: Text(style: TextStyle(fontSize: 25), "Login"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
