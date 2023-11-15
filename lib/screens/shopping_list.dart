import 'package:flutter/material.dart';

class Item {
  final String name;
  final int amount;
  final String description;

  Item(this.name, this.amount, this.description);
}

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard(this.item, {super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        color: Colors.deepPurple,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white)),
                Text((item.amount).toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white)),
                Text(item.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ));
  }
}

class ShopListPage extends StatefulWidget {
  const ShopListPage({super.key});

  @override
  State<ShopListPage> createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> {
  List<Item> items = [];

  void addItem(Item newItem) {
    setState(() {
      items.add(newItem); 
    });
  }

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              // Looping untuk menampilkan seluruh item
              children: items.map((item) {
                return ItemCard(item);
              }).toList(),
            ),
          ),
        ));
  }
}
