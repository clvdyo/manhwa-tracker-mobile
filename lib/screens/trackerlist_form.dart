import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:manhwa_tracker/screens/menu.dart';
import 'package:manhwa_tracker/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
// TODO: Impor drawer yang sudah dibuat sebelumnya

class TrackerFormPage extends StatefulWidget {
  const TrackerFormPage({super.key});

  @override
  State<TrackerFormPage> createState() => _TrackerFormPageState();
}

class _TrackerFormPageState extends State<TrackerFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _title = "";
    int _chapter = 0;
    String _genre = "";
    String _sinopsis = "";
    double _rating = 0.0;
    @override
    Widget build(BuildContext context) {
      final request = context.watch<CookieRequest>();

        return Scaffold(
          appBar: AppBar(
              title: const Center(
                  child: Text(
                  'Form Tambah Manhwa',
                  ),
              ),
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              ),
              drawer: const LeftDrawer(),
              body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Judul Manhwa",
                                    labelText: "Judul Manhwa",
                                    border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                    _title = value!;
                                    });
                                },
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                    return "Judul tidak boleh kosong!";
                                    }
                                    return null;
                                },
                            ),
                        ),
                        
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Chapter",
                                    labelText: "Chapter",
                                    border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                    _chapter = int.tryParse(value!) ?? 0;
                                    });
                                },
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return "Chapter tidak boleh kosong!";
                                    }
                                    if (int.tryParse(value) == null) {
                                        return "Chapter harus berupa angka!";
                                    }
                                    return null;
                                },
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Genre",
                                    labelText: "Genre",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                    // TODO: Tambahkan variabel yang sesuai
                                    _genre = value!;
                                    });
                                },
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                    return "Genre tidak boleh kosong!";
                                    }
                                    return null;
                                },
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Sinopsis",
                                    labelText: "Sinopsis",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                    _sinopsis = value!;
                                    });
                                },
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                    return "Sinopsis tidak boleh kosong!";
                                    }
                                    return null;
                                },
                            ),
                        ),
                        Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Rating",
                                      labelText: "Rating",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                      ),
                                  ),
                                  onChanged: (String? value) {
                                      setState(() {
                                      // TODO: Tambahkan variabel yang sesuai
                                      _rating = double.tryParse(value!) ?? 0.0;
                                      });
                                  },
                                  validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                      return "Rating tidak boleh kosong!";
                                      }
                                      return null;
                                  },
                              ),
                          ),

                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.indigo),
                                    ),
                                    onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                                return AlertDialog(
                                                    title: const Text('Manhwa berhasil tersimpan'),
                                                    content: SingleChildScrollView(
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: [
                                                                Text('Judul: $_title'),
                                                                Text('Chapter: $_chapter'),
                                                                Text('Genre: $_genre'),
                                                                Text('Sinopsis: $_sinopsis'),
                                                                Text('Rating: $_rating'),
                                                            ],
                                                        ),
                                                    ),
                                                    actions: [
                                                        TextButton(
                                                            child: const Text('OK'),
                                                            onPressed: () async {
                                                              if (_formKey.currentState!.validate()) {
                                                                // Kirim ke Django dan tunggu respons
                                                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                                                final response = await request.postJson(
                                                                  "http://127.0.0.1:8000/create-flutter/",
                                                                  jsonEncode(<String, String>{
                                                                    'title': _title,
                                                                    'chapter': _chapter.toString(),
                                                                    'genre': _genre,
                                                                    'sinopsis': _sinopsis,
                                                                    'rating': _rating.toString(),
                                                                    // TODO: Sesuaikan field data sesuai dengan aplikasimu
                                                                  }),
                                                                );
                                                                if (context.mounted) {
                                                        if (response['status'] == 'success') {
                                                          ScaffoldMessenger.of(context)
                                                              .showSnackBar(const SnackBar(
                                                            content: Text(
                                                                "Manhwa baru berhasil disimpan!"),
                                                          ));
                                                          Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    MyHomePage()),
                                                          );
                                                        } else {
                                                          ScaffoldMessenger.of(context)
                                                              .showSnackBar(const SnackBar(
                                                            content: Text(
                                                                "Terdapat kesalahan, silakan coba lagi."),
                                                          ));
                                                        }
                                                      }
                                                    }
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: const Text(
                                        "Save",
                                        style: TextStyle(color: Colors.white),
                                    ),
                                ),
                            ),
                        ),

                    ]
                ),
              
              ),
         ) );
    }
}