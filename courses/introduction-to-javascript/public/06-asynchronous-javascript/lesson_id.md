## JavaScript Asinkron

Karena JS mampu berinteraksi dengan situs web lain, file lokal, dan berbagai jenis sumber daya eksternal, terkadang Anda perlu menunggu sebelum sumber daya tersebut diproses.

Misalnya, ketika Anda ingin membaca teks dari situs web eksternal. Meskipun biasanya hanya membutuhkan waktu kurang dari satu detik, waktu ini digunakan untuk membangun koneksi dengan situs web dan mengunduh teks sehingga aplikasi Anda dapat membacanya. Kita bisa membuat aplikasi kita **menunggu** teks ini tersedia, agar bisa kita proses nanti.

Dalam contoh kode berikut, Anda dapat melihat kata kunci `await`. Ini menunjukkan bahwa kita sedang menunggu file sepenuhnya terbaca dan isinya dikembalikan ke aplikasi kita. Kami telah menyertakan modul JS bawaan `fs` (filesystem) yang berisi fungsi `readFileSync()`. Fungsi ini membaca file lokal dari sistem yang sama di mana aplikasi berjalan, dan kemudian mengembalikan isinya. Namun karena operasi ini tidak instan, kita perlu menunggu hingga selesai.

Tidak memungkinkan menggunakan kata kunci `await` di sembarang tempat. Kita perlu menggunakannya dalam fungsi `async` - kata kunci ini singkatan dari **asynchronous**. Fungsi `async` memberi sinyal pada mesin JS bahwa kita mengharapkan untuk menunggu beberapa sumber daya eksternal.

Jadi, bagaimana cara membedakan kapan kita perlu menunggu agar suatu operasi selesai (dengan kata lain kapan harus menggunakan kata kunci `await`) - dan kapan tidak? Sebagai aturan umum, setiap kali Anda berinteraksi dengan sumber daya yang tidak ada dalam kode JS Anda, Anda perlu menunggu hingga diproses. Baik itu file lokal seperti pada contoh ini atau situs web di internet.

## Latihan

- Bacalah isi dari file lokal `./greeting.text` dengan melewatkan path file tersebut ke fungsi `readFileSync()`. [Halaman dokumentasi](https://nodejs.org/api/fs.html#fsreadfilesyncpath-options) juga mungkin berguna.
