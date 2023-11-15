import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aniiway/widgets/item.dart';
import 'package:aniiway/main.dart';

class ShopFormPage extends StatefulWidget {
  const ShopFormPage({super.key});

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _amount = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<MyDataModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Form Belanja"),
          ),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  // input nama barang
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nama Barang",
                      labelText: "Nama Barang",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                      }
                      return null;
                    },
                  )),
              Padding(
                  // input jumlah barang
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Jumlah Barang",
                      labelText: "Jumlah Barang",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _amount = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Jumlah tidak boleh kosong!";
                      }
                      if (int.tryParse(value) == null) {
                        return "Jumlah harus berupa angka!";
                      }
                      return null;
                    },
                  )),
              Padding(
                  // input jumlah barang
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Deskripsi Barang",
                      labelText: "Deskripsi Barang",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _description = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Deskripsi tidak boleh kosong!";
                      }
                      return null;
                    },
                  )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title:
                                      const Text('Produk berhasil tersimpan'),
                                  content: SingleChildScrollView(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Nama: $_name"),
                                      Text("Jumlah: $_amount"),
                                      Text("Deskripsi: $_description"),
                                    ],
                                  )),
                                );
                              });
                          itemsData.addData(Item(_name, _amount, _description));
                          // ShopListPage.items.add(Item(_name, _amount, _description));
                        }
                        _formKey.currentState!.reset();
                      },
                      child: const Text("Submit",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ))
            ],
          )),
        ));
  }
}
