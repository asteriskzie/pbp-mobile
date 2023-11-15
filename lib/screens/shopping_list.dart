import 'package:aniiway/main.dart';
import 'package:flutter/material.dart';
import 'package:aniiway/widgets/item.dart';
import 'package:provider/provider.dart';

class ShopListPage extends StatefulWidget {
  const ShopListPage({super.key});

  @override
  State<ShopListPage> createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = Provider.of<MyDataModel>(context).data;

    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Shopping List"),
          ),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 10.0, // Spasi antar item
              runSpacing: 10.0, // Spasi antar baris
              // Looping untuk menampilkan seluruh item
              children: items.map((item) {
                return ItemCard(item);
              }).toList(),
            ),
          ),
        ));
  }
}
