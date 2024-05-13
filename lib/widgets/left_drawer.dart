import 'package:flutter/material.dart';
import 'package:manhwa_tracker/models/manhwa.dart';
import 'package:manhwa_tracker/screens/list_manhwa.dart';
import 'package:manhwa_tracker/screens/menu.dart';
import 'package:manhwa_tracker/screens/trackerlist_form.dart';
// TODO: Impor halaman TrackerFormPage jika sudah dibuat

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.indigo,
              ),
              child: Column(
                  children: [
                      Text(
                          'Manhwa Tracker',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                          ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Catat seluruh progress membaca manhwa disini!",
                          // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          textAlign: TextAlign.center
                      ),
                  ],
              ),
              ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_add_rounded),
            title: const Text('Tambah Manhwa'),
            // Bagian redirection ke TrackerFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrackerFormPage()
                  ));
            },
          ),
          ListTile(
              leading: const Icon(Icons.library_books_rounded),
              title: const Text('Daftar manhwa'),
              onTap: () {
                  // Route menu ke halaman manhwa
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ManhwaPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}
