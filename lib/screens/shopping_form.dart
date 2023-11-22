import 'dart:convert';
import 'package:aniiway/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aniiway/widgets/item.dart';
import 'package:aniiway/main.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:aniiway/screens/menu.dart';

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
    const createUrl = "${globals.appUrl}create-flutter/"; 
    final request = context.watch<CookieRequest>();
    final itemsData = Provider.of<MyDataModel>(context, listen: false);
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
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // Kirim ke Django dan tunggu respons
                          // Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                          // final itemsData = Provider.of<MyDataModel>(context, listen: false);
                          final response = await request.postJson(
                              createUrl,
                              jsonEncode(<String, String>{
                                'name': _name,
                                'amount': _amount.toString(),
                                'description': _description,
                                // Sesuaikan field data sesuai dengan aplikasimu
                              }));

                          if (response['status'] == 'success') {
                          itemsData.addData(Item(_name, _amount, _description));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Berhasil menambahkan item."),
                            ));
                            // itemsData.addData(Item(_name, _amount, _description));                      
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  "Terdapat kesalahan, silakan coba lagi."),
                            ));
                          }
                        }
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
