import 'package:flutter/material.dart';
import 'package:manhwa_tracker/widgets/left_drawer.dart';
import 'package:manhwa_tracker/widgets/tracker_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<TrackerItem> items = [
    TrackerItem("Lihat Manhwa", Icons.library_books_rounded, Colors.brown),
    TrackerItem("Tambah Manhwa", Icons.library_add_rounded, Colors.cyan),
    TrackerItem("Logout", Icons.logout, Colors.red),
  ];

  @override
    Widget build(BuildContext context) {
      return Scaffold(
              appBar: AppBar(
              title: const Text(
                  'Manhwa Tracker',
              ),
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              ),
              // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
              drawer: const LeftDrawer(),
              body: SingleChildScrollView(
              // Widget wrapper yang dapat discroll
              child: Padding(
                  padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                  child: Column(
                  // Widget untuk menampilkan children secara vertikal
                  children: <Widget>[
                      const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                      child: Text(
                          'Cahaya\'s Tracker', // Text yang menandakan tracker
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                      ),
                      // Grid layout
                      GridView.count(
                      // Container pada card kita.
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: items.map((TrackerItem item) {
                          // Iterasi untuk setiap item
                          return TrackerCard(item);
                      }).toList(),
                      ),
                  ],
                  ),
              ),
              ),
          );
    }
}

