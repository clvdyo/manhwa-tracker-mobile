# manhwa_tracker_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Nama: A. Nurcahaya Tampubolon<br>
NPM: 2306335575<br>
Kelas: PBP A Genap<br>

## Tugas 7

<details>

[ ] Membuat sebuah program Flutter baru dengan tema tracker seperti tugas-tugas sebelumnya.

Setelah melakukan instalasi flutter, buka command prompt pada direktori dimana ingin menyimpan proyek flutter dan masukkan perintah berikut.
```
flutter create manhwa_tracker
cd manhwa_tracker
```

[ ] Membuat tiga tombol sederhana dengan masing-masing warna berbeda yang memiliki ikon dan teks untuk:

    [ ] Melihat daftar item (Lihat Item)

    [ ] Menambah item (Tambah Item)

    [ ] Logout (Logout)

[ ] Memunculkan Snackbar dengan tulisan:

    [ ] "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.

    [ ] "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.

    [ ] "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

[ ] Menjawab beberapa pertanyaan berikut pada README.md pada root folder.

[ ] Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

    StatelessWidget:

    Tidak memiliki state internal. Artinya, setelah widget dibangun, kontennya tidak berubah.

    Konten dari widget ini hanya bergantung pada properti yang diberikan pada saat pembuatan widget.

    Biasanya digunakan untuk bagian-bagian tampilan yang statis atau tidak berubah, seperti judul, teks statis, ikon, dan sebagainya.

    Stateless widget memiliki kinerja yang lebih baik dibandingkan dengan StatefulWidget karena tidak perlu memperbarui state.

    StatefulWidget:

    Memiliki state internal yang dapat berubah seiring waktu. Artinya, konten dari widget ini dapat diperbarui atau diubah berdasarkan perubahan dalam aplikasi.

    Dapat merespons input pengguna, perubahan data, atau peristiwa lainnya dengan memperbarui tampilan sesuai kebutuhan.

    Stateful widget digunakan ketika aplikasi memerlukan interaksi pengguna yang dinamis, seperti daftar yang dapat digulir, formulir interaktif, atau tampilan yang berubah sesuai dengan keadaan aplikasi.

    Karena memiliki state, StatefulWidget dapat memiliki siklus hidup yang kompleks, seperti initState, dispose, dll.

Jadi, intinya, perbedaan utama antara StatelessWidget dan StatefulWidget adalah kemampuan StatefulWidget untuk mempertahankan dan mengelola state internal aplikasi, sementara StatelessWidget tidak memiliki kemampuan ini dan kontennya statis.

[ ] Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.<br>

    Scaffold: Mengatur kerangka dasar halaman. Ini termasuk AppBar, body, dan fungsi-fungsi lain yang diperlukan untuk membangun sebuah halaman.

    AppBar: Menampilkan AppBar di bagian atas halaman. Ini biasanya berisi judul dan ikon atau tombol aksi.

    SingleChildScrollView: Widget yang memungkinkan konten di dalamnya dapat discroll, berguna untuk mengatasi masalah overflow pada konten yang melebihi ukuran layar.

    Padding: Menambahkan padding ke kontennya. Padding digunakan di sekitar semua konten untuk memberikan ruang putih antara konten dan tepi layar.

    Column: Menyusun widget-child secara vertikal.

    GridView.count: Menampilkan item dalam bentuk grid dengan jumlah kolom yang ditentukan. Digunakan di sini untuk menampilkan kartu-kartu tracker dalam grid.

    TrackerCard: Widget yang mendefinisikan kartu untuk setiap item tracker. Ini merupakan custom widget yang dibuat untuk menampilkan item tracker dengan ikon dan teks.

    Material: Memberikan latar belakang yang berbasis material design. Ini diterapkan di dalam TrackerCard.

    InkWell: Memberikan efek sentuhan saat di-tap pada widget. Digunakan di dalam TrackerCard untuk memberikan respons saat widget diklik.

    Icon: Menampilkan ikon. Digunakan untuk menampilkan ikon yang terkait dengan setiap item tracker.

    Text: Menampilkan teks. Digunakan untuk menampilkan nama item tracker.

    SnackBar: Menampilkan pesan kecil yang muncul di bagian bawah layar. Digunakan di dalam onTap event untuk memberikan umpan balik kepada pengguna setelah mereka menekan sebuah item tracker.

</details>
