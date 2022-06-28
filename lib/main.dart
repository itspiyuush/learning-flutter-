import 'package:flutter/material.dart';
import 'package:flutter2/Pages/home_page.dart';
import 'package:flutter2/Pages/login_page.dart';
import 'package:flutter2/Pages/utills/route.dart';
import 'package:flutter2/widgets/theme.dart';
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
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoute.loginRoute,
      routes: {
        //"/": (context) => const Homepage(),
        MyRoute.homeRoute: (context) => const Homepage(),
        MyRoute.loginRoute: (context) => const Loginpage(),
      },
    );
  }
}
