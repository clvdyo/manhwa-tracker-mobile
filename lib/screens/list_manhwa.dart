import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:manhwa_tracker/models/manhwa.dart';
import 'package:manhwa_tracker/widgets/left_drawer.dart';

class ManhwaPage extends StatefulWidget {
    const ManhwaPage({Key? key}) : super(key: key);

    @override
    State<ManhwaPage> createState() => _ManhwaPageState();
}

class _ManhwaPageState extends State<ManhwaPage> {
Future<List<Manhwa>> fetchManhwa() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Manhwa
    List<Manhwa> listManhwa = [];
    for (var d in data) {
        if (d != null) {
            listManhwa.add(Manhwa.fromJson(d));
        }
    }
    return listManhwa;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Manhwa'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchManhwa(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                        return const Column(
                            children: [
                                Text(
                                    "Tidak ada data manhwa.",
                                    style: TextStyle(
                                        color: Color(0xff59A5D8),
                                        fontSize: 20
                                    ),
                                ),
                                SizedBox(height: 8),
                            ],
                        );
                    } else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (_, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12
                                ),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                            "${snapshot.data![index].fields.title}",
                                            style: const TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.chapter}"),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.genre}"),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.sinopsis}"),
                                        const SizedBox(height: 10),
                                        Text("${snapshot.data![index].fields.rating}")
                                    ],
                                ),
                            ),
                        );
                    }
                }
            }),
        );
    }
}