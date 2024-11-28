# Pengantar Ethereum

## Apa itu Ethereum

Ethereum adalah jaringan blockchain terdesentralisasi. Berbeda dengan Bitcoin, Ethereum memungkinkan pengguna untuk berinteraksi dengan kontrak pintar—aplikasi kustom yang dibuat oleh pengembang di seluruh dunia, yang dapat diunggah ke jaringan tanpa memerlukan izin. Kontrak pintar memainkan peran penting dalam ekosistem Ethereum, memungkinkan aplikasi mulai dari kalkulator sederhana hingga sistem keuangan yang kompleks, daftar tugas, permainan daring, dan koleksi seni digital.

Mata uang kripto utama di jaringan Ethereum disebut Ether (ETH). Ether dapat digunakan untuk mentransfer nilai antar alamat, membayar biaya transaksi, dan berinteraksi dengan kontrak pintar. Selain itu, Ethereum mendukung berbagai token yang dapat dipertukarkan (fungible) dan tidak dapat dipertukarkan (non-fungible), memperluas fungsionalitasnya di berbagai bidang.

## Perbedaan antara Ethereum dan Bitcoin

Meskipun Ethereum terinspirasi dari Bitcoin, khususnya dalam menghubungkan **blok-blok** di mana setiap blok berisi sekumpulan **transaksi**, fokus pada kontrak pintar membuatnya berbeda. Banyak transaksi di Ethereum bukan hanya transfer nilai; sering kali mereka mewakili interaksi antara pengguna dan kontrak pintar.

Awalnya, Ethereum bergantung pada penambang untuk menghasilkan blok, mirip dengan Bitcoin. Namun, pada tahun 2022, Ethereum Foundation—organisasi nirlaba yang mengawasi perkembangan jaringan—beralih ke model yang lebih hemat energi yang dikenal sebagai **Proof of Stake (PoS)**. Dalam PoS, validator menyetorkan sejumlah dana ("stake") untuk memenuhi syarat menghasilkan blok baru. Validator yang dipilih secara acak membuat blok sesuai aturan jaringan dan mendapatkan imbalan dalam bentuk hadiah blok dasar dan biaya transaksi. Perubahan ini secara signifikan mengurangi dampak lingkungan Ethereum.

Berbeda dengan pencipta Bitcoin yang anonim, Satoshi Nakamoto, salah satu pendiri Ethereum, [Vitalik Buterin](https://en.wikipedia.org/wiki/Vitalik_Buterin), adalah sosok yang dikenal publik. Pada usia 19, Vitalik ikut menulis Ethereum Yellow Paper, yang merinci dasar teknis jaringan. Yellow Paper adalah salah satu dokumen yang paling sering dikutip di industri blockchain, dan Vitalik terus berkontribusi aktif dalam diskusi tentang masa depan Ethereum.

## Dompet

Pengguna Ethereum dapat memilih dari beberapa jenis dompet untuk mengelola ETH mereka dan berinteraksi dengan aplikasi terdesentralisasi:

- **Ekstensi Browser:** Opsi populer termasuk [MetaMask](https://metamask.io/), Coinbase Wallet, dan dompet terintegrasi Brave. Ini ideal bagi pengguna yang ingin mengirim transaksi dan berinteraksi dengan dApps hanya dengan beberapa klik.

- **Dompet Seluler:** Contohnya termasuk [Trust Wallet](https://trustwallet.com/), yang dikembangkan oleh Binance, salah satu bursa kripto terbesar. Dompet seluler memudahkan pengelolaan kripto saat bepergian dan semakin berguna untuk pembayaran di toko serta pada acara konvensi.

- **Dompet Perangkat Keras:** Perangkat fisik seperti [Ledger](https://www.ledger.com/) dan [Trezor](https://trezor.io/) sering digunakan untuk penyimpanan dingin. Mereka menawarkan keamanan lebih tinggi dengan memerlukan beberapa langkah, seperti memasukkan PIN, sebelum transaksi dapat dikirim. Dompet perangkat keras dianggap sebagai salah satu opsi penyimpanan paling aman untuk cryptocurrency.

Banyak pengguna menggabungkan berbagai jenis dompet berdasarkan kebutuhan mereka. Misalnya, mereka mungkin menyimpan sebagian besar aset mereka di dompet perangkat keras yang aman, menggunakan dompet browser untuk berinteraksi dengan DeFi (keuangan terdesentralisasi) dan dApps lainnya, serta menyimpan sejumlah kecil di dompet seluler untuk transaksi sehari-hari.

Penting untuk dicatat bahwa dompet sebenarnya tidak menyimpan cryptocurrency. Sebaliknya, mereka menyimpan **kunci pribadi** dengan aman yang memungkinkan pengguna untuk menandatangani transaksi dari akun mereka. Saldo token yang sebenarnya disimpan di blockchain, dan siapa pun yang menguasai kunci pribadi menguasai dana. Oleh karena itu, sangat penting untuk mencadangkan dompet Anda, menjaga cadangan tetap aman, dan menggunakan langkah-langkah keamanan tambahan seperti kata sandi dan PIN.

Salah satu operasi dasar yang dapat dilakukan dompet adalah mengirim transaksi. Anda cukup memilih jumlah yang akan ditransfer, memasukkan alamat penerima, dan menekan tombol kirim. Namun, penting untuk memastikan bahwa Anda memiliki sejumlah kecil token asli jaringan (dalam kasus Ethereum, itu adalah token ETH) untuk menutupi biaya transaksi.

Ada biaya dasar untuk setiap transaksi. Dan karena setiap blok hanya bisa memuat jumlah transaksi terbatas, ada juga pengganda biaya yang didorong oleh pasar. Saat permintaan untuk mengirim transaksi dengan cepat meningkat, pengganda juga meningkat. Dan saat permintaan rendah, biaya rata-rata menurun. Anda tidak perlu menghitung biaya sendiri karena dompet Anda biasanya menawarkan beberapa opsi tentang seberapa cepat Anda ingin transaksi Anda disertakan dalam blok.
- **Cepat** - Dompet Anda menghitung pengganda biaya yang sangat mungkin akan memasukkan transaksi Anda di blok berikutnya.
- **Normal** - Mungkin memerlukan beberapa blok - di Ethereum, itu bisa berarti puluhan detik hingga beberapa menit - agar transaksi Anda disertakan dalam blok.
- **Lambat** - Biaya terendah. Proses transaksi mungkin memakan waktu puluhan menit atau bahkan berjam-jam.


## Token Fungible dan Non-Fungible

Selain **token ETH asli**, ada juga jenis token lain yang tersedia di Ethereum: token fungible (juga disebut ERC-20) dan token non-fungible (disebut ERC-721). Keduanya adalah komponen penting dari ekosistem Ethereum yang memungkinkan aplikasi dalam bidang keuangan, seni, permainan, dan bidang lainnya.

- **Token Fungible (ERC-20):** Token ini identik dan dapat dipertukarkan, mirip dengan mata uang tradisional. Misalnya, satu USDT (stablecoin yang dipatok ke dolar AS) setara dengan USDT lainnya. Token fungible biasanya digunakan dalam pembayaran, mekanisme pemungutan suara, dan fungsi standar lainnya.

- **Token Non-Fungible (ERC-721):** Setiap NFT unik dan tidak dapat dipertukarkan satu lawan satu dengan yang lain. NFT sering kali mewakili kepemilikan aset digital atau fisik seperti seni, musik, atau barang dalam permainan, yang membuatnya penting dalam berbagai industri kreatif dan permainan.

## Aplikasi Terdesentralisasi

Aplikasi terdesentralisasi (dApps) adalah program perangkat lunak yang berjalan di blockchain Ethereum melalui kontrak pintar. dApps ini biasanya bersifat open-source dan **transparan**, memungkinkan siapa saja untuk mengaudit kodenya dan memverifikasi fungsinya.

Karakteristik utama dari dApps adalah **ketidakberubahannya**. Setelah diterapkan, kode aplikasi terdesentralisasi tidak dapat diubah atau dikendalikan oleh satu entitas. Akibatnya, frasa "kode adalah hukum" sering digunakan oleh pengembang dApp.

Berinteraksi dengan dApps memerlukan pengiriman transaksi, yang melibatkan biaya. Di jaringan Ethereum (Lapisan 1), biaya ini bisa tinggi, terutama saat penggunaan puncak. Untuk mengatasinya, banyak pengguna beralih ke jaringan Lapisan 2.

## Layer 2

Popularitas Ethereum telah menyebabkan tantangan dalam menangani banyak transaksi secara efisien. Untuk mengatasinya, pengembang memperkenalkan jaringan Layer 2.

Jaringan Layer 2 **dibangun di atas Ethereum** untuk mengurangi penggunaan dan biaya transaksi sambil mempertahankan keamanan dan desentralisasi jaringan Lapisan 1.

Jaringan ini sering menggunakan **solusi teknis serupa**, memungkinkan kontrak pintar dan dApps lainnya untuk berjalan di jaringan Lapisan 1 dan Lapisan 2. Contoh jaringan Layer 2 yang dibangun di atas Ethereum adalah Lisk.

Sekarang setelah kita memahami Ethereum dengan lebih baik, mari mulai mempelajari bahasa pemrograman Solidity. Silakan masuk ke lingkungan pengembangan interaktif untuk memulai!
