import 'package:aniiway/models/product.dart';
import 'package:aniiway/screens/product_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product item;

  const ProductCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(8), 
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(
                          item.fields.name,
                          item.fields.amount,
                          item.fields.description,
                          item.fields.user)));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    item.fields.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    item.fields.amount.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    item.fields.description,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    item.fields.user.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ))));
  }
}
