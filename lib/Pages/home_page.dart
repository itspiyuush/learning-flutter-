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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: CatalogModel.Items.length,
        itemBuilder: (context, index) {
          final item = CatalogModel.Items[index];

          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: GridTile(
              header: Container(
                padding: const EdgeInsets.all(10.0),
                child: Text(item.name, style: TextStyle(color: Colors.white)),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
              ),
              footer: Container(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  item.price.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.lightGreen),
              ),
              child: Image.network(item.image),
            ),
          );
        },
      ),
      drawer:
          const MyDrawer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
