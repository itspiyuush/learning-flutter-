import 'package:flutter/material.dart';
import 'package:flutter2/models/catalog_model.dart';
import 'package:flutter2/widgets/drawer.dart';
import 'package:flutter2/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final duplicatelist = List.generate(12, (index) => CatalogModel.Items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application"),
      ),
      body: ListView.builder(
          itemCount: duplicatelist.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(7.0),
              color: Colors.deepOrange,
              child: ItemWidget(
                item: duplicatelist.first,
              ),
            );
          }),
      drawer:
          const MyDrawer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
