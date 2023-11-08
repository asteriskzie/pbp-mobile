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
  