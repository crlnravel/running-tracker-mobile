# Running Tracker Mobile


## Soal 1

[ ] Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Perbedaan utama antara stateless dan stateful widget adalah widget yang bersifat stateful dapat menyimpan data (state), sementara widget stateless tidak dapat menyimpan data. Walaupun begitu, widget stateless lebih efisien daripada widget stateful.
## Soal 2

[ ] Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

(1) MaterialApp: Berguna untuk menyediakan implementasi sesuai tema Material Design.
(2) Scaffold: Menyediakan berbagai komponen dasar yang dapat langsung digunakan.
(3) NavigationBar: Digunakan untuk membuat bar navigasi untuk berpindah-pindah halaman.
(4) SnackBar: Digunakan untuk menampilkan SnackBar (seperti popup)
(5) NavigationDestination: Widget yang digunakan untuk sebagai destinasi dari NavigationBar.
(6) Text: Widget yang digunakan untuk menampilkan teks.
(7) Icon: Widget yang digunakan untuk menampilkan ikon.
(8) Card: Widget yang digunakan untuk menampilkan container seperti kartu.
(9) EdgeInset: Widget yang digunakan untuk memberikan offset pada pinggir-pinggir widget.
(10) SizedBox: Container yang dapat berkembang sesuai parentnya.
(11) Center: Widget yang membuat elemennya berada di tengah.
(12) ElevatedButton: Widget yang digunakan untuk menampilkan tombol.
## Soal 3

[ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

- Membuat program flutter dengan menggunakan flutter create <nama_project>

- Membuat tiga tombol dengan NavigationBar. Lalu tombol logout berada pada halaman Profile.

- Memunculkan snackbar dengan menambahkan eventlistener. Lalu memanggil fungsi ScaffoldMessenger.of(context).showSnackBar() untuk menampilkan object snackbar. Untuk logout, saya menggunakan eventlistener onPressed, sementara untuk NavigationBar saya menggunakan onDestinationChange.