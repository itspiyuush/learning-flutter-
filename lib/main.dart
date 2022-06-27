import 'package:flutter/material.dart';
import 'package:flutter2/Pages/home_page.dart';
import 'package:flutter2/Pages/login_page.dart';
import 'package:flutter2/Pages/utills/route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Demo',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(primarySwatch: Colors.green),
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        primarySwatch: Colors.deepOrange,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.orange, centerTitle: true),
      ),
      initialRoute: MyRoute.loginRoute,
      routes: {
        //"/": (context) => const Homepage(),
        MyRoute.homeRoute: (context) => const Homepage(),
        MyRoute.loginRoute: (context) => const Loginpage(),
      },
    );
  }
}
