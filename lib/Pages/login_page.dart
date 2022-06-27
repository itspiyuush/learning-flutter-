import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter2/Pages/utills/route.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = " ";
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const Image(
            image: NetworkImage(
                "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome ! $name",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: const InputDecoration(
                hintText: "Enter Username",
                label: Text("Name"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                label: Text("Password"),
              ),
            ),
          ),
          /*Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                  onPressed: () {
                    // print("Login");
                    // Navigator.pushNamed(context, MyRoute.homeRoute);
                  },
                  child: const Text("Login")),
            )*/
          Material(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(isPressed ? 40.0 : 8.0),
            child: InkWell(
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(isPressed ? 40.0 : 8.0),
              onTap: () async {
                setState(() {
                  isPressed = true;
                });
                await Future.delayed(const Duration(seconds: 5));
                // Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 5),
                height: 40.0,
                width: isPressed ? 40.0 : 120.0,
                alignment: Alignment.center,
                child: /*isPressed
                    ? const Icon(Icons.done)
                    :*/
                    const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
