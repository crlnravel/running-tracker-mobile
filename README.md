# Running Tracker Mobile

## TUGAS 7 TERDAPAT PADA COMMIT SEBELUMNYA

## Soal 1 T8

[ ] Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Perbedaan utama antara Navigator.push() dan Navigator.pushReplacement() terletak pada bagaimana elemen baru diletakkan pada Stack tampilan. Pada push, aplikasi hanya menambahkan Route baru pada ToS (Top of the Stack), sementara pada pushReplacement, aplikasi melakukan pop terlebih dahulu, lalu melakukan push seperti biasa. Sehingga, Route yang sebelumnya seperti diganti pada pushReplacement. 

Dalam penggunaannya, apabila kita ingin user dapat kembali ke halaman sebelumnya, seperti terdapat halaman dalam halaman, maka kita dapat menggunakan push. Contoh penggunaan pushReplacement adalah ketika kita ingin berpindah halaman menggunakan drawer, kita ingin memindahkan drawer dari tampilan ketika berpindah Route, maka lebih baik kita menggunakan pushReplacement.
## Soal 2 T8

[ ] Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Terdapat banyak layout widget pada Flutter, contohnya yang saya pakai pada tugas kali ini adalah:

- Column: Digunakan untuk menampilkan elemen pada secara vertikal
- ListView: Digunakan untuk menampilkan elemen pada scolling list
- Padding: Digunakan untuk menampilkan elemen dengan sebuah padding tertentu
- Center: Digunakan untuk meletakkan elemen tepat di tengah
- Align: Digunakan untuk meletakkan elemen sesuai dengan nilai Alignmentnya.
## Soal 3 T8

[ ] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

TextFormField, karena input yang diminta berbentuk string dan mudah untuk menggunakan TextFormField.
## Soal 4 T8

[ ] Bagaimana penerapan clean architecture pada aplikasi Flutter?

Untuk menerapkan clean architecture, kita perlu memisahkan setiap komponen pada kode kita menjadi file dan mengelompokkannya pada folder terpisah sesuai peruntukkannya. Contohnya seperti memisahkan komponen-komponen, menu (layar utuh), pengolahan data, dan lain-lain. Sehingga kita dapat dengan mudah melakukan debugging atau penambahan fitur pada aplikasi Flutter kita.

## Soal 5 T8

[ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- Pertama-tama, saya membuat sebuah komponen baru berupa widget form. Lalu, saya mengisinya dengan 3 TextInputField dan mem-bind-nya menggunakan event listener onChanged dengan state dari komponen yang baru saja saya buat. Setelah itu, saya juga menambahkan tombol simpan yang akan memanggil fungsi untuk memanggil sebuah popup yang digunakan untuk memberitahu user kalau mereka telah berhasil menambahkan data baru. Tidak lupa saya juga menambahkan validasi dengan menambahkan parameter `validation` dan mengecek apakah valuenya sesuai atau tidak.

- Setelah itu saya menambahkan komponen tersebut pada list yang berisi elemen2 yang ingin ditampilkan pada body scaffold dan menggantikan halaman yang sebelumnya hanya berisi Card kosong.

- Saya juga menambahkan drawer dan appbar. Untuk itu saya membuat komponen Drawer baru dan mengisinya dengan ListView yang berisi ListTile sebagai alat navigasi. Untuk sistem perpindahan halamannya pada halaman utama, saya membuat fungsi tambahan pada menu utama yang berguna sebagai callback untuk drawer tersebut. Sehingga drawer dapat memanggil fungsi callback untuk mengubah halaman. Isi dari fungsi callback itu sendiri adalah setState untuk mengubah indeks dari halaman yang sedang ditampilkan.
## -------------------
## Soal 1 T9

[ ] Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita bisa. Tetapi menurut saya hal tersebut kurang efektif karena tujuan dibuatnya model adalah memudahkan dalam pengembangan aplikasi. Jika kita sudah memiliki model, kita lebih mudah dalam mengembangkan aplikasi karena setiap data sudah memiliki bentuk objek, sehingga pengolahannya akan lebih natural daripada JSON / Map yang biasanya masih "schemaless".
## Soal 2 T9

[ ] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

Fungsi CookieRequest adalah menyimpan data cookie dan autentikasi dari Flutter agar dapat berkomunikasi dengan Django sebagai user konkrit (bukan Anonymous) dan dapat melakukan login, logout, serta memiliki sessionnya sendiri. Tujuan mengapa CookieRequest perlu dibagikan adalah agar kita dapat melakukan pemanggilan API dengan user yang sudah terautentikasi secara lebih mudah melalui komponen manapun. Karena kita tidak ingin untuk melakukan login berkali-kali, kita harus memiliki objek CookieRequest yang sama, dan untuk melakukan ini kita dapat menggunakan Provider yang me-wrap keseluruhan aplikasi agar state CookieRequest yang digunakan selalu sama pada setiap komponen.
## Soal 3 T9

[ ] Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Pertama-tama, kita harus memastikan kita memiliki dependensi 'http'. Kemudian, kita dapat melakukan pembuatan API endpoints, atau menggunakan API endpoints yang sudah ada, dan memastikan data yang dikembalikan merupakan JSON. Setelah itu, kita dapat juga menyediakan model / schema terlebih dahulu agar data JSON yang kita ambil nanti dapat diubah menjadi objek native Dart. Untuk melakukan pengambilan data, kita dapat menggunakan beberapa method darti http, yaitu http.get, http.post, dll tergantung kebutuhan kita. Setelah mendapatkan response, kita dapat melakukan decoding dari string response.body untuk kemudian direturn atau dibuat sebagai objek model yang kita buat tadi, kemudian ditampilkan pada sebuah elemen.
## Soal 4 T9

[ ] Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Pertama-tama, kita harus membuat UI untuk halaman user melakukan login. Setelah itu, siapkan juga endpoint untuk menerima data user pada Django yang mengembailkan pesan / status apakah autentikasi berhasil atau gagal. Kemudian, kita dapat menggunakan objek CookieRequest untuk menjalankan fungsi login agar data autentikasi dapat dikirimkan kemudian memastikan jika autentikasi berhasil pada Flutter.
## Soal 5 T9

[ ] Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

ListView: digunakan untuk menampilkan widget dalam bentuk List
TextField: digunakan untuk meminta data user dalam bentuk teks
Scaffold: digunakan untuk "wadah" seluruh widget di dalamnya
Container: digunakan untuk meletakkan dan mengatur tampilan
Column: digunakan untuk menampilkan widget dalam bentuk kolom
Text: digunakan untuk menampilkan teks
ElevatedButton: digunakan untuk menampilkan tombol & eventlistener
## Soal 6 T9

[ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- Memastikan deploy ke PWS
Cek PWS

- Membuat halaman login
Menggunakan 2 TextField untuk username dan password serta tombol untuk melakukan aksi login

- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter
Sudah dijelaskan pada soal 4

- Membuat model kustom sesuai dengan proyek aplikasi Django
Menggunakan QuickType dengan memasukkan data JSON untuk diparse secara otomatis menjadi model Flutter

- Membuat halaman yang berisi daftar semua item yang terdapat pada ** JSON diendpoint Django yang telah kamu deploy
Dengan menggunakan endpoint yang mengambil semua informasi item, saya melakukan fetching dan memasukkan data tersebut untuk diubah menjadi model. Nantinya, data yang berbentuk list tsb saya tampilkan dalam ListView menggunakan constructor .builder, dan menampilkan informasi dari objek tsb.

- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item
Saya memasang button pada setiap item di tampilan Flutter, kemudian membuat sebuah halaman yang menerima parameter objek yang ingin ditampilkan. Lalu akan ditampilkan halaman tsb menggunakan Text dengan menggunakan data yang diberikan dari constructor parameter. Saya juga menambahkan tombol kembali untuk kembali ke halaman utama dengan Navigator.pop()
