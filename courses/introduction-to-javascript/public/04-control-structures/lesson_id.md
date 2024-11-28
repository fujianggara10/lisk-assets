## Struktur Kontrol

Bagian penting dalam membangun aplikasi sering kali melibatkan pengondisian perilaku aplikasi. Dengan kata lain, menampilkan output yang berbeda - atau melakukan tugas yang berbeda - berdasarkan nilai dari input.

Misalnya, Anda memiliki pengguna dengan hak admin, dan Anda ingin memberi mereka kemampuan untuk melakukan tugas tertentu, misalnya menulis artikel blog baru. Namun, Anda tidak ingin sembarang orang memposting artikel baru - hanya admin yang dapat melakukannya.

Kita dapat memvalidasi sebuah kondisi menggunakan pernyataan `if`. Jika (`if`) pengguna memiliki hak admin, biarkan mereka memposting artikel. Jika tidak (`else`), tampilkan pesan kesalahan.

Dan jika kita ingin merangkai validasi, kita dapat menggabungkan kondisi dengan pernyataan `else if`.

Dalam contoh ini, kita memvalidasi apakah sebuah angka lebih kecil atau lebih besar dari 5. Bagian pertama dari kondisi `if (number < 5)` akan mengeksekusi blok yang dibungkus dalam kurung kurawal (`{` dan `}`) hanya jika kondisi ini terpenuhi (nilai `number` lebih kecil dari `5`).

Jika tidak terpenuhi (`number` **tidak** lebih kecil dari `5`), kode akan melanjutkan untuk memvalidasi kondisi kedua, dalam hal ini `else if (number > 5)`. Sekali lagi, jika kondisi ini terpenuhi (`number` lebih besar dari `5`), kita akan mengeksekusi blok berikutnya yang dibungkus dalam kurung kurawal (`{` dan `}`).

Tugas Anda adalah memperluas rangkaian kondisi ini dan menambahkan kondisi ketiga untuk memvalidasi apakah `number` **sama dengan** `5`.

## Latihan

- Selesaikan fungsi `buildMessage()`. Jika `number` sama dengan lima, kembalikan pesan `Number equals 5`
