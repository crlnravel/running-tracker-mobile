# Running Tracker Mobile


## Soal 1

[ ] Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Perbedaan utama antara Navigator.push() dan Navigator.pushReplacement() terletak pada bagaimana elemen baru diletakkan pada Stack tampilan. Pada push, aplikasi hanya menambahkan Route baru pada ToS (Top of the Stack), sementara pada pushReplacement, aplikasi melakukan pop terlebih dahulu, lalu melakukan push seperti biasa. Sehingga, Route yang sebelumnya seperti diganti pada pushReplacement.

Dalam penggunaannya, apabila kita ingin user dapat kembali ke halaman sebelumnya, seperti terdapat halaman dalam halaman, maka kita dapat menggunakan push. Contoh penggunaan pushReplacement adalah ketika kita ingin berpindah halaman menggunakan drawer, kita ingin memindahkan drawer dari tampilan ketika berpindah Route, maka lebih baik kita menggunakan pushReplacement.
## Soal 2

[ ] Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Terdapat banyak layout widget pada Flutter, contohnya yang saya pakai pada tugas kali ini adalah:

- Column: Digunakan untuk menampilkan elemen pada secara vertikal
- ListView: Digunakan untuk menampilkan elemen pada scolling list
- Padding: Digunakan untuk menampilkan elemen dengan sebuah padding tertentu
- Center: Digunakan untuk meletakkan elemen tepat di tengah
- Align: Digunakan untuk meletakkan elemen sesuai dengan nilai Alignmentnya.
## Soal 3

[ ] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

TextFormField, karena input yang diminta berbentuk string dan mudah untuk menggunakan TextFormField.
## Soal 4

[ ] Bagaimana penerapan clean architecture pada aplikasi Flutter?

Untuk menerapkan clean architecture, kita perlu memisahkan setiap komponen pada kode kita menjadi file dan mengelompokkannya pada folder terpisah sesuai peruntukkannya. Contohnya seperti memisahkan komponen-komponen, menu (layar utuh), pengolahan data, dan lain-lain. Sehingga kita dapat dengan mudah melakukan debugging atau penambahan fitur pada aplikasi Flutter kita.

## Soal 5

[ ] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- Pertama-tama, saya membuat sebuah komponen baru berupa widget form. Lalu, saya mengisinya dengan 3 TextInputField dan mem-bind-nya menggunakan event listener onChanged dengan state dari komponen yang baru saja saya buat. Setelah itu, saya juga menambahkan tombol simpan yang akan memanggil fungsi untuk memanggil sebuah popup yang digunakan untuk memberitahu user kalau mereka telah berhasil menambahkan data baru. Tidak lupa saya juga menambahkan validasi dengan menambahkan parameter `validation` dan mengecek apakah valuenya sesuai atau tidak.

- Setelah itu saya menambahkan komponen tersebut pada list yang berisi elemen2 yang ingin ditampilkan pada body scaffold dan menggantikan halaman yang sebelumnya hanya berisi Card kosong.

- Saya juga menambahkan drawer dan appbar. Untuk itu saya membuat komponen Drawer baru dan mengisinya dengan ListView yang berisi ListTile sebagai alat navigasi. Untuk sistem perpindahan halamannya pada halaman utama, saya membuat fungsi tambahan pada menu utama yang berguna sebagai callback untuk drawer tersebut. Sehingga drawer dapat memanggil fungsi callback untuk mengubah halaman. Isi dari fungsi callback itu sendiri adalah setState untuk mengubah indeks dari halaman yang sedang ditampilkan.