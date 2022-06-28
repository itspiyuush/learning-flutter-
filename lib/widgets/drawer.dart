import 'package:flutter2/Pages/utills/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: ListView(
        children: [
          const DrawerHeader(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(0.0),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "Piyush Barapatre",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text("pbarapatre@gmail.com",
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                radius: 10.0,
                backgroundImage: NetworkImage(
                    "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
                /*backgroundImage:AssetImage(
                  "assets/images/img.jpg",
                ),*/
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.black),
            title: Text(
              "Main Menu",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.black),
            title: Text(
              "Contact US",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.lock, color: Colors.black),
            title: GestureDetector(
              onTap: () => Navigator.pushNamed(context, MyRoute.loginRoute),
              child: const Text(
                "Log In",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
