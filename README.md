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

## Tugas 8

<details>
    
[ ] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

    [ ] Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
    
    [ ] Memiliki sebuah tombol Save.
    
    [ ] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
    
    [ ] Setiap elemen input tidak boleh kosong.
    
    [ ] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

[ ] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

[ ] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

[ ] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    
    [ ] Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.

    [ ] Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    
    [ ] Ketika memiih opsi Tambah Item, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

[ ] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).

[ ] Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Pada `Navigator.pushReplacement` akan me-replace halaman sekarang dengan halaman baru sedangkan pada `Navigator.push` menambahkan rute lain ke atas tumpukan screen (stack) yang sekarang<br>

[ ] Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Container: Ini adalah widget serbaguna yang dapat digunakan untuk menentukan berbagai properti seperti padding, margin, warna latar belakang, dan bentuk. Ini sangat berguna untuk mengelompokkan widget lain dan menambahkan dekorasi ke dalamnya.

Row: Digunakan untuk mengatur widget secara horizontal, satu di sebelah lainnya. Ini berguna ketika ingin menempatkan beberapa widget dalam satu baris.

Column: Mirip dengan Row, tetapi mengatur widget secara vertikal, satu di atas yang lain. Ini cocok digunakan ketika Anda ingin menata widget secara vertikal.

ListView: Digunakan untuk menampilkan daftar widget secara berurutan. Ini adalah pilihan yang baik ketika Anda memiliki sejumlah besar item yang ingin ditampilkan dalam daftar yang dapat digulir.

GridView: Mirip dengan ListView, tetapi mengatur item dalam bentuk grid. Ini cocok untuk menampilkan daftar item dalam format grid.

[ ] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

[ ] Bagaimana penerapan clean architecture pada aplikasi Flutter?

Penerapan Clean Architecture pada aplikasi Flutter dapat membantu mengorganisir kode dengan baik, memisahkan logika bisnis dari detail teknis, dan membuat kode lebih mudah diuji dan dipelihara.

[ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

</details>

## Tugas 9

<details>

[ ] Memastikan deployment ke PWS proyek tugas Django kamu telah berjalan dengan baik.

[ ] Membuat halaman login pada proyek tugas Flutter.

[ ] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

[ ] Membuat model kustom sesuai dengan proyek aplikasi Django.

[ ] Membuat halaman yang berisi daftar semua item yang terdapat pada ** JSON diendpoint Django yang telah kamu deploy.

[ ] Tampilkan name, amount, dan description dari masing-masing item pada halaman ini.

[ ] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.

[ ] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.

[ ] Tampilkan seluruh atribut pada model item kamu pada halaman ini.

[ ] Tambahkan tombol untuk kembali ke halaman daftar item.

[ ] Menjawab beberapa pertanyaan berikut pada README.md pada root folder (silakan modifikasi README.md yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).

[ ] Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya bisa, hanya saja data yang didapat bisa jadi strukturnya tidak sesuai dengan apa yang diinginkan. Oleh karena itu, sebaiknya menentukan model terlebih dahulu agar data yang didapat mempunyai struktur yang baik dan mudah untuk digunakan

[ ] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest adalah entitas yang tidak standar dalam konteks Flutter, namun konsep yang sama mungkin mengacu pada penggunaan kuki (cookies) dalam permintaan HTTP. Kuki adalah cara untuk menyimpan data di sisi klien, yang dapat digunakan untuk menyimpan informasi seperti preferensi pengguna, sesi login, dan lain-lain.

Membagikan instance CookieRequest ke semua komponen di aplikasi Flutter memungkinkan pengelolaan kuki yang konsisten, efisien, mudah dipelihara, dan terpusat. Ini penting terutama dalam aplikasi yang menggunakan otentikasi pengguna atau menyimpan informasi penting dalam kuki.

[ ] Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

1. Menambahkan depedensi `http`
2. Membuat model sesuai json yang akan di get
3. Melakukan HTTP request dengan method `GET`
4. Response didecode menjadi JSON kemudian dikonversi menjadi model yang dibuat
5. Menampilkan data dengan memanfaatkan `FutureBuilder`

[ ] Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Input Data Akun di Aplikasi Flutter:</br>
Pengguna memasukkan informasi akun, seperti nama pengguna (username) dan kata sandi (password), melalui antarmuka pengguna di aplikasi Flutter.

Permintaan Autentikasi ke Backend Django:</br>
Aplikasi Flutter membuat permintaan HTTP (biasanya POST) ke backend Django dengan data akun yang dimasukkan oleh pengguna, seperti nama pengguna dan kata sandi.
Permintaan ini biasanya dikirim ke endpoint yang ditentukan di Django, yang kemudian akan mengelola proses autentikasi.

Autentikasi oleh Django:</br>
Backend Django menerima permintaan autentikasi dan memeriksa kecocokan nama pengguna dan kata sandi yang diberikan dengan yang tersimpan di basis data.
Jika informasi akun yang diberikan valid, Django menghasilkan token autentikasi (biasanya menggunakan JWT atau sesi) yang akan digunakan untuk otorisasi pengguna di masa mendatang.

Respon ke Aplikasi Flutter:</br>
Backend Django mengirimkan respons ke aplikasi Flutter. Jika autentikasi berhasil, respons biasanya berisi token autentikasi dan kode status HTTP 200 (OK).
Jika autentikasi gagal, respons biasanya berisi pesan kesalahan yang menjelaskan alasan kegagalan dan kode status HTTP yang sesuai (misalnya, 401 Unauthorized).

[ ] Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

[ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

</details>
