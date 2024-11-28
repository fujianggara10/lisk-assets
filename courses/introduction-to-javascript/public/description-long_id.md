# Pengantar Blockchain

## Apa itu Blockchain?

![Gambar](/markdown/photo_01.jpg)

Pada intinya, blockchain adalah buku besar terdistribusi—sejenis basis data yang berisi catatan transaksi, yang disimpan di beberapa komputer di seluruh dunia. Berbeda dengan basis data tradisional, blockchain menyimpan data dalam blok yang saling terhubung (atau dirantai). Setiap blok berisi daftar transaksi, dan begitu blok selesai, blok tersebut ditambahkan ke rantai dengan pengidentifikasi yang menghubungkannya ke blok sebelumnya.

(Gambar di sini)

Berikut beberapa konsep utama:

- **Desentralisasi:** Alih-alih dikelola oleh satu otoritas (seperti bank sentral), blockchain dipelihara oleh jaringan komputer, yang dikenal sebagai node, yang bekerja sama untuk membuat, memvalidasi, dan menyimpan transaksi dalam blok.
- **Imutabilitas:** Setelah transaksi dicatat di blockchain, hampir tidak mungkin untuk mengubah atau menghapusnya.
- **Transparansi:** Setiap transaksi melibatkan pengirim dan penerima yang diidentifikasi dengan alamat publik. Meskipun identitas sebenarnya dari alamat-alamat ini mungkin tidak diketahui secara publik, siapa pun dapat memeriksa buku besar untuk melihat semua transaksi yang terkait dengan alamat mana pun.

Ada beberapa blockchain berbeda yang ada. Beberapa nama yang paling dikenal termasuk Bitcoin, Ethereum, Solana, Polygon, dan XRP. Masing-masing memiliki tujuan unik, yang akan kita jelajahi lebih lanjut dalam pelajaran berikutnya.

## Kasus Penggunaan Blockchain

Mari kita mulai dengan kasus penggunaan yang paling jelas—cryptocurrency. Ide asli di balik Bitcoin, jaringan blockchain pertama, adalah untuk memungkinkan transfer nilai tanpa memerlukan otoritas pusat. Otoritas pusat—seperti bank, perusahaan kartu kredit, atau layanan pembayaran online—dapat campur tangan dalam transaksi, menundanya hingga kondisi tertentu terpenuhi, atau dalam kasus ekstrim, menyensornya sepenuhnya. Blockchain, teknologi yang mendasari Bitcoin dan cryptocurrency lainnya, memungkinkan transaksi terdesentralisasi, tanpa izin, yang dapat dikirim dari mana saja di dunia ke mana saja dalam hitungan detik.

Kasus penggunaan utama lainnya adalah **kontrak pintar**, konsep yang dipelopori oleh Ethereum, blockchain kedua yang paling dikenal. Ethereum dirancang untuk memungkinkan pengembang membuat aplikasi terdesentralisasi (dApps) yang berjalan di blockchain-nya. Aplikasi ini, yang dikenal sebagai kontrak pintar, dapat berkisar dari daftar tugas sederhana hingga sistem keuangan yang kompleks (dikenal sebagai DeFi—Keuangan Terdesentralisasi), cryptocurrency khusus, token, permainan online, dan bahkan koleksi seni on-chain.

Basis data blockchain juga semakin banyak digunakan di berbagai industri, termasuk [asuransi](https://www.ingwb.com/en/insights/distributed-ledger-technology/blockchain-technology), [pemrosesan pembayaran](https://www.paypal.com/us/digital-wallet/manage-money/crypto/pyusd), dan manajemen rantai pasokan. Karena blockchain membuatnya hampir tidak mungkin untuk mengubah catatan transaksi setelah ditambahkan ke rantai, banyak perusahaan menggunakannya untuk melacak pergerakan barang dari produsen ke gudang, dan akhirnya ke toko tempat pelanggan membelinya.

Tapi bagaimana kita mencapai tahap lanjutan ini? Mari kita mundur selangkah dan menjelajahi asal usul blockchain.

## Bagaimana Semuanya Dimulai

Konsep mata uang terdesentralisasi telah ada selama beberapa waktu. Sejak tahun 1990-an, sekelompok penggemar kriptografi dan privasi, yang dikenal sebagai [cypherpunks](https://en.wikipedia.org/wiki/Cypherpunk), berbagi ide mereka melalui milis, sebagai pendahulu forum diskusi online modern.

Pada tahun 2008, salah satu anggota komunitas ini, yang dikenal dengan nama samaran **Satoshi Nakamoto**, memposting sebuah makalah penelitian berjudul “Bitcoin: Sistem Uang Elektronik Peer-to-Peer.” Makalah ini menguraikan jenis mata uang digital baru yang dapat ditransfer langsung antara pengguna tanpa memerlukan otoritas pusat. Beberapa bulan kemudian, Satoshi menerapkan teori ini dan meluncurkan Bitcoin, mata uang digital terdesentralisasi pertama.

Hingga saat ini, identitas asli Satoshi Nakamoto tetap menjadi misteri. Apakah itu satu orang, atau kelompok orang? Kita tidak tahu. Nama Satoshi Nakamoto umum di Jepang, mirip dengan "John Smith" di negara-negara berbahasa Inggris. Meskipun ada petunjuk yang menunjukkan bahwa orang ini memiliki pengetahuan lanjutan tentang matematika terapan dan bahasa pemrograman C++, dan mungkin beroperasi di zona waktu Amerika, identitas pasti belum pernah ditetapkan. Pada tahun 2013, Satoshi membuat posting publik terakhir mereka dan menghilang dari dunia.

Selama bertahun-tahun, beberapa individu mengklaim sebagai Satoshi, tetapi tidak ada yang memberikan bukti kriptografi yang akan meyakinkan komunitas—yaitu, menandatangani pesan dengan dompet asli Satoshi.

Meskipun tanpa kehadiran Satoshi, jaringan Bitcoin terus berkembang sejak diluncurkan pada tahun 2009. Jaringan ini kini didukung oleh puluhan ribu node, dan industri bernilai triliunan dolar telah dibangun di atas Bitcoin.

## Bitcoin: Blockchain Pertama

Konsep menggunakan Bitcoin cukup sederhana. Anda menginstal perangkat lunak khusus yang membuat dompet untuk Anda dan terhubung ke jaringan. Tidak perlu mendaftar atau memberikan informasi pribadi—Anda dapat mulai mengirim dan menerima pembayaran langsung.

Di balik layar, dompet Anda terdiri dari **alamat publik** dan **kunci pribadi**. Untuk menerima pembayaran, Anda membagikan alamat publik Anda kepada pengirim. Untuk mengirim pembayaran, Anda menggunakan kunci pribadi Anda, yang berfungsi seperti kata sandi yang sangat panjang dan aman. Kunci pribadi ini sangat kompleks sehingga hampir tidak mungkin bagi orang lain untuk menebaknya dan biasanya disimpan dalam file yang aman.

Ketika Anda mengirim transaksi, transaksi tersebut disiarkan ke jaringan dan didistribusikan di antara semua node sebagai transaksi **tertunda**. Transaksi tertunda ini kemudian diambil oleh **penambang Bitcoin**, yang menggunakan komputer canggih untuk menyelesaikan persamaan matematika yang kompleks untuk membuat blok baru. Seperti yang disebutkan sebelumnya, setiap blok berisi daftar transaksi, yang mungkin termasuk milik Anda.

Para penambang diberi penghargaan atas pekerjaan mereka dengan dua cara:
1. Jaringan Bitcoin mengeluarkan BTC baru untuk setiap blok yang diproduksi oleh penambang.
2. Mereka menerima biaya transaksi yang dibayar pengguna untuk mengirim transaksi mereka.

Saat ini, ada banyak **penyedia online** yang memungkinkan Anda membuat dompet Bitcoin, mengelola kunci pribadi Anda, dan mengirim transaksi atas nama Anda, tanpa perlu menjalankan perangkat lunak khusus. Karena regulasi hukum, layanan ini mungkin memerlukan verifikasi ID, tetapi banyak dari mereka yang ramah pengguna, aman, dan andal. Beberapa penyedia paling terkenal termasuk [Binance](https://www.binance.com/) dan [Coinbase](https://www.coinbase.com/). Pada tahun 2024, Bitcoin semakin memperkuat posisinya di dunia keuangan karena perusahaan keuangan tradisional, seperti BlackRock, mulai menawarkan produk berbasis Bitcoin, seperti ETF Bitcoin.

## Ada Banyak Blockchain

Meskipun Bitcoin adalah blockchain pertama, itu jauh dari satu-satunya. Sejak diluncurkan, berbagai jaringan blockchain telah dikembangkan, masing-masing dengan fitur dan kegunaan unik.

- **Ethereum:** Ethereum memperkenalkan kontrak pintar, memungkinkan pengembang untuk membuat dApps yang berjalan di blockchain Ethereum. Inovasi ini membuka dunia kemungkinan, mulai dari mengelola token hingga bermain game online dan masih banyak lagi.

- **Solana:** Diluncurkan beberapa tahun setelah Ethereum, Solana mengatasi beberapa keterbatasan Ethereum. Sementara Ethereum membutuhkan waktu lebih dari 10 detik untuk menghasilkan setiap blok (tidak ideal untuk transaksi cepat seperti membeli kopi), Solana telah mengurangi waktu produksi blok menjadi hanya 0,2 detik.

- **Lisk:** Sementara Solana sangat dioptimalkan, pengembangannya bisa menjadi tantangan bagi pengembang untuk membuat aplikasi di platformnya, membatasi potensi basis pengguna. Lisk, di antara jaringan lainnya, dibangun di atas teknologi Ethereum tetapi memperkenalkan perubahan untuk membuat jaringannya lebih mudah diakses oleh pengembang dan pengguna. Jaringan seperti Lisk sering disebut sebagai “jaringan Layer 2” (L2s), dengan Ethereum berfungsi sebagai “jaringan Layer 1.”

Ingin belajar lebih lanjut tentang jaringan blockchain ini? Anda beruntung karena bagian selanjutnya akan membahas Ethereum. Namun, ketika datang untuk mempelajari pemrograman dan memahami bahasa Solidity milik Ethereum, kita perlu mengetahui dasar-dasar JavaScript.

Sekarang mari kita mulai dengan mempelajari dasar-dasar JavaScript menggunakan lingkungan pengembangan interaktif.
