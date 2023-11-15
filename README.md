# aniiway

A new Flutter project.

```flutter run -d chrome```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Tugas Individu 

### Tugas 7

#### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Stateless widget tidak dapat diubah setelah dibuat (immutable), sedangkan stateful widget dapat diubah sepanjang waktu (mutable).

#### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. `MaterialApp`: Widget ini digunakan untuk membuat sebuah material design app.
2. `Material`: Widget ini digunakan untuk membuat sebuah material design card yang memiliki bentuk dan warna yang sudah ditentukan.
3. `InkWell`: Widget ini digunakan untuk membuat area yang responsif terhadap sentuhan pengguna.
4. `Scaffold`: Widget ini digunakan untuk membuat sebuah halaman yang memiliki struktur dasar seperti app bar, body, dan floating action button.
5. `ScaffoldMessenger`: Widget ini digunakan untuk membuat sebuah messenger yang dapat menampilkan snackbar.
6. `AppBar`: Widget ini digunakan untuk membuat sebuah app bar yang biasanya berisi judul halaman dan tombol navigasi.
7. `Container`: Widget ini digunakan untuk membuat sebuah container.
8. `Center`: Widget ini digunakan untuk membuat sebuah wrapper yang dapat menengahkan widget yang ada di dalamnya.
9. `SingleChildScrollView`: Widget ini digunakan untuk membuat sebuah wrapper yang dapat discroll.
10. `Padding`: Widget ini digunakan untuk memberikan padding pada widget yang diinginkan.
11. `Column`: Widget ini digunakan untuk menampilkan children secara vertikal.
12. `GridView`: Widget ini digunakan untuk membuat grid layout dengan jumlah kolom yang sudah ditentukan.
13. `Icon`: Widget ini digunakan untuk menampilkan sebuah icon.
14. `Text`: Widget ini digunakan untuk menampilkan sebuah teks.
15. `SnackBar`: Widget ini digunakan untuk menampilkan sebuah pesan singkat yang muncul di bagian bawah layar.

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

1. Menginisiasi project flutter dengan `flutter create aniiway`
2. Merapikan folder project dengan memisahkan main dan menu 
3. Membuat class ShopItem yang berisi nama dan icon 
4. Membuat class ShopCard yang berisi ShopItem dan atribut color, gunanya sebagai card tampilan ShopItem dengan warna sesuai atribut color 
5. Menambahkan list ShopItem yang berisi ShopItem yang akan ditampilkan
6. Menampilkan list ShopItem di MyHomePage dengan menggunakan GridView

### Tugas 8 

#### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Perbedaan utama antara `Navigator.push()` dan `Navigator.pushReplacement()` terletak pada cara mereka menangani tampilan yang sudah ada. Dengan `Navigator.push()`, kita menambahkan tampilan baru di atas tumpukan (stack) tampilan yang sedang ditampilkan. Contohnya, jika kita memiliki tampilan A dan kemudian menggunakan `push()` untuk menambahkan tampilan B, maka A akan tetap ada di bawah B. Ketika memencet tombol back, kita akan kembali ke tampilan A.

Di sisi lain, `Navigator.pushReplacement()` menggantikan tampilan yang sedang ditampilkan dengan tampilan baru. Misalnya, jika kita sedang menampilkan tampilan A dan kemudian menggunakan `pushReplacement()` untuk beralih ke tampilan B, maka A akan langsung digantikan oleh B di dalam stack. Ketika memencet tombol back, kita akan kembali ke tampilan sebelum A.

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondRoute()),
);

Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => SecondRoute()),
);
```


#### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

1. Container: Digunakan untuk menempatkan widget lain di dalamnya dan memberikan kontrol atas propertinya seperti padding, margin, dan dekorasi.
2. Column dan Row: Untuk mengatur widget secara vertikal (Column) atau horizontal (Row).
3. Stack: Mengizinkan penumpukan widget di atas satu sama lain, memberikan fleksibilitas dalam penyusunan elemen tumpuk.

```dart
Container(
  padding: EdgeInsets.all(8.0),
  margin: EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  child: Column(
    children: [
      Text('Hello'),
      Text('World'),
    ],
  ),
);

Row(
  children: [
    Text('Hello'),
    Text('World'),
  ],
);

Stack(
  children: [
    Text('Hello'),
    Text('World'),
  ],
);
```

#### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Saya menggunakan `TextFormField` untuk menginput text, saya menggunakannya karena jenis input yang dibutuhkan (nama, jumlah, dan deskripsi) adalah text. 

Saya juga menggunakan `ElevatedButton` untuk input aksi dari pengguna untuk submit, saya menggunakannya karena jenis input yang dibutuhkan adalah button.


#### Bagaimana penerapan clean architecture pada aplikasi Flutter?

Penerapan clean architecture pada aplikasi Flutter melibatkan pemisahan kode menjadi tiga lapisan utama: Presentation Layer (antarmuka pengguna), Domain Layer (logika bisnis), dan Data Layer (akses data).

1. Presentation Layer: Berisi UI, seperti widget, dan logic tampilan. Menggunakan BLoC (Business Logic Component) atau Provider untuk mengelola state aplikasi.

2. Domain Layer: Menyimpan logic dan aturan aplikasi tanpa tergantung pada teknologi. Ini berisi use case dan model bisnis.

3. Data Layer: Bertanggung jawab untuk mengambil dan menyimpan data, baik dari database lokal maupun sumber eksternal. Repository digunakan sebagai abstraksi untuk mengakses data.

Keuntungan clean architecture dalam Flutter termasuk kode yang lebih terorganisir, fleksibilitas dalam penggantian teknologi di lapisan data, dan pengujian yang lebih mudah. Clean architecture memastikan bahwa aplikasi mudah di-maintain, diuji, dan dapat berkembang seiring waktu tanpa terlalu bergantung pada framework atau library tertentu.

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- Pertama saya membuat halaman untuk shoping form. Saya menggunakan 3 textfield untuk menjadi input nama barang, ampunt, dan description. Selain itu saya menambahkan button untuk submit. Ketika di-submit, akan muncul pop-up yang berisi nama barang, amount, dan description yang diinputkan.
- Setelah itu, saya membuat tampilan drawer. Saya menghubungkan tampilan shopping tadi ke drawer dengan menggunakan routing dari drawer. 
- Selanjutnya, saya juga menghubungkan tampulan shopping tadi ke halaman menu supaya bisa diakses dari menu, yakni melalui button 'Tambah Item'.