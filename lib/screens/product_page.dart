import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String name;
  final int amount;
  final String description;
  final int owner; // User ID

  const ProductPage(this.name, this.amount, this.description, this.owner, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Nama Produk: $name",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Jumlah: $amount",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Deskripsi: $description",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Pemilik: $owner",
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: () => {
              Navigator.pop(context)
            }, child: const Text("Kembali"))
          ],
        ),
      ),
    );
  }
}


