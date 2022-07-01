import 'package:flutter/material.dart';
import 'package:flutter2/models/catalog_model.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        hoverColor: Colors.lime,
        onTap: () {},
        leading: Image.network(item.image),
        title: Text(
          item.name,
          style: const TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          item.desc,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 17.0),
        ),
      ),
    );
  }
}
