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
        color: Colors.deepPurple.shade100,
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