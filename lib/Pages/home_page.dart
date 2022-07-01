import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter2/models/catalog_model.dart';
import 'package:flutter2/widgets/drawer.dart';
import 'package:flutter2/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // final duplicatelist = List.generate(12, (index) => CatalogModel.Items[0]);
  @override
  void initState() {
    super.initState();
    loadDAta();
  }

  loadDAta() async {
    final String catalogJson =
        await rootBundle.loadString("files/catalog.json");
    final decodedJson = jsonDecode(catalogJson);

    final productsData = decodedJson["products"];

    List<Item> list =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();

    CatalogModel.Items = list;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application"),
      ),
      body: ListView.builder(
          itemCount: CatalogModel.Items.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(7.0),
              child: ItemWidget(
                item: CatalogModel.Items[index],
              ),
            );
          }),
      drawer:
          const MyDrawer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
