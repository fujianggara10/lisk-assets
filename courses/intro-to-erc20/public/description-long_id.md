# Pengantar Token yang Dapat Dipertukarkan

## Memahami Token yang Dapat Dipertukarkan

Jaringan Ethereum dan Lisk menggunakan Ether (ETH) sebagai token **asli** mereka. Jaringan lain, seperti Binance Smart Chain (BNB) dan Tron (TRX), juga memiliki token asli mereka sendiri. Namun, jaringan ini juga dapat mendukung token tambahan, salah satunya adalah **token yang dapat dipertukarkan**.

Token yang dapat dipertukarkan dapat dibuat oleh pengembang kontrak pintar tanpa izin, artinya siapa pun dengan pengetahuan yang cukup dapat membuat dan menerbitkan token mereka sendiri di Ethereum, Lisk, atau jaringan lain. Token ini sering disebut sebagai **token ERC-20** (di Ethereum), **BEP-20** (di Binance Smart Chain), atau **TRC-20** (di Tron), tergantung pada standar jaringan yang digunakan. Meskipun memiliki standar yang berbeda, mereka semua mewakili token yang dapat dipertukarkan.

Seperti namanya, token ERC-20 ini dapat dipertukarkan dalam koleksi mereka. Ini dapat dibandingkan dengan koin dan uang kertas dalam keuangan tradisional. Jika seseorang meminjamkan uang 100 dolar kepada Anda, Anda dapat mengembalikannya dengan uang kertas atau koin lainnya - Anda tidak perlu mengembalikan dengan uang kertas 100 dolar yang sama.

Hal yang sama berlaku untuk token ERC-20. Salah satu contoh token yang dapat dipertukarkan yang terkenal adalah stablecoin USDT. Menggunakan contoh di atas - jika seseorang meminjamkan 100 USDT kepada Anda, Anda dapat mengembalikan pinjaman menggunakan token USDT lainnya, tanpa harus mengembalikan 100 USDT yang persis sama yang Anda terima.


## Kasus Penggunaan Token yang Dapat Dipertukarkan

Seperti yang disebutkan, stablecoin memiliki nilai yang dipatok ke mata uang FIAT. Kebanyakan dipatok pada dolar AS, tetapi ada juga beberapa stablecoin yang mewakili Euro serta mata uang negara-negara yang lebih kecil. Biasanya, organisasi yang menerbitkan stablecoin, memegang aset dengan nilai total lebih tinggi daripada total pasokan koin mereka. Dengan cara ini, mereka juga dapat menawarkan penukaran dari mata uang FIAT ke stablecoin dan sebaliknya. Penerbit terpusat, seperti Tether - perusahaan di balik USDT, biasanya hanya menawarkan pertukaran kepada organisasi besar seperti bursa, dan jumlah yang ditukarkan sering kali mencapai ratusan juta dolar. Namun, ada juga penerbit stablecoin terdesentralisasi - misalnya Maker DAO - yang memungkinkan Anda untuk mengunci ETH dan token lainnya serta menerima token yang dipatok ke dolar AS yang disebut DAI tanpa batas minimum pada pertukaran. Dan Anda selalu dapat menukar DAI kembali ke ETH atau token lain yang Anda gunakan sebagai jaminan.

Meskipun stablecoin adalah salah satu kasus penggunaan token yang dapat dipertukarkan yang paling terlihat, ada juga lainnya.

Kontrak pintar umumnya tidak memiliki akses ke data off-chain kecuali jika ada yang menyediakan data tersebut untuk kontrak. Salah satu alat semacam itu (disebut oracle) yang digunakan oleh pengembang kontrak pintar adalah Chainlink. Beberapa layanan mereka gratis - dan beberapa memiliki biaya yang dihitung dalam token LINK mereka. Penyedia data juga dapat memperoleh bagian dari pembayaran untuk layanan yang datanya digunakan oleh pengembang kontrak pintar. Contoh lain dari token yang dapat dipertukarkan sebagai utilitas adalah BAT dari browser Brave. Pengguna browser ini dapat memilih untuk melihat iklan yang diterbitkan oleh pengiklan Brave dan menerima token BAT sebagai imbalan.

Banyak token ERC20 juga berfungsi sebagai token tata kelola. Saat Anda memiliki saham di perusahaan tradisional, Anda mungkin menerima kekuatan suara yang proporsional dengan jumlah saham yang Anda miliki. Hal ini sama dengan beberapa protokol terdesentralisasi. Uniswap, bursa terdesentralisasi terbesar, telah menghasilkan dan mengirimkan token UNI kepada penggunanya. Pemegang token UNI dapat berpartisipasi dalam pengambilan keputusan di platform, mengusulkan ide baru, dan memberikan suara atas ide tersebut. Semakin banyak token yang mereka miliki, semakin kuat kekuatan suara mereka. Dan dibandingkan dengan perusahaan tradisional, batas nilai minimal token yang dimiliki untuk memberikan suara biasanya jauh lebih rendah.


## Mengakses Token yang Dapat Dipertukarkan dari Dompet Anda

Apakah Anda menggunakan dompet ekstensi browser seperti **MetaMask** atau dompet perangkat keras seperti **Ledger** atau **Trezor**, berinteraksi dengan token yang dapat dipertukarkan cukup mudah. Sebagian besar dompet mendukung beberapa jaringan, tetapi penting untuk memastikan dompet Anda kompatibel dengan jaringan tempat token Anda disimpan.

Saat menyiapkan dompet, biasanya dompet akan menampilkan token asli jaringan—seperti ETH di Ethereum atau BNB di Binance Smart Chain. Namun, Anda mungkin perlu menambahkan token ERC-20 lainnya secara manual dengan memasukkan alamat kontraknya. Di MetaMask, misalnya, Anda dapat mengklik "Import tokens" untuk mengenali token baru yang tidak ditampilkan secara otomatis.

![Picture](/markdown/photo_03.jpg)

## Transfer dan Persetujuan

Transfer token adalah salah satu fitur dasar dari dompet apa pun. Anda menentukan jumlah token yang ingin ditransfer, alamat penerima, dan menekan tombol kirim. Tetapi Anda juga perlu memastikan bahwa Anda memiliki sejumlah kecil **token asli** (misalnya ETH) di jaringan tempat Anda mengirim token ERC20 untuk menutupi **biaya transaksi**.

Biaya transaksi hampir selalu dibayar **oleh pengirim**. Ada beberapa konsep lanjutan seperti Abstraksi Akun di mana biaya transaksi dapat dibayar oleh pihak ketiga atau dalam token ERC20 lainnya. Namun, dalam sebagian besar kasus, biaya ditanggung oleh pengirim transaksi dalam token asli jaringan.

Besarnya biaya tergantung pada beberapa faktor - jaringan itu sendiri serta kondisi pasar. Di beberapa jaringan layer 2 seperti Lisk, biaya untuk mentransfer token biasanya sangat rendah, bahkan kurang dari 1 sen. Dan tidak peduli apakah Anda mentransfer token senilai ribuan atau jutaan, biaya tidak memperhitungkan jumlah yang ditransfer.

Namun, biaya memperhitungkan permintaan saat ini untuk mengirim transaksi di jaringan pilihan Anda. Setiap jaringan memiliki batasan pada jumlah transaksi yang dapat masuk dalam satu blok. Dan jika Anda ingin transaksi Anda dimasukkan dalam blok lebih cepat, Anda dapat memilih untuk membayar biaya tambahan kepada produsen blok sehingga mereka lebih memilih untuk memasukkan transaksi Anda daripada yang lain. Jika lebih banyak pengguna memilih untuk membayar biaya premium, rata-rata biaya meningkat. Dan jika permintaan untuk transfer cepat rendah, biaya rata-rata menurun.

Anda tidak perlu menghitung biaya sendiri, karena dompet Anda biasanya menyarankan sekitar 3 level kecepatan untuk memasukkan transaksi Anda ke dalam blok. Jadi yang perlu Anda lakukan hanyalah memilih level biaya yang Anda inginkan dan dompet akan menangani sisanya. Level biaya di dompet biasanya dijelaskan sebagai:

- **Cepat** - Perangkat lunak dompet menghitung jumlah biaya ini sehingga transaksi Anda kemungkinan besar akan dimasukkan dalam blok berikutnya. Tergantung pada jaringan, waktu blok rata-rata biasanya dalam hitungan detik - beberapa jaringan memiliki waktu blok di bawah satu detik, beberapa memiliki sekitar 10 detik.
- **Normal** - Ini adalah opsi yang dipilih sebagai default oleh banyak dompet. Dengan level biaya ini, Anda dapat mengharapkan transaksi Anda dimasukkan dalam blok dalam beberapa menit.
- **Lambat** - Biaya terendah. Jika permintaan untuk mengirim transaksi tinggi saat itu, mungkin perlu waktu puluhan menit atau bahkan jam agar transaksi dimasukkan dalam blok.

Selain transfer, Anda juga dapat memberikan persetujuan kepada alamat lain untuk dapat membelanjakan token Anda. Tetapi mengapa Anda melakukan itu? Mengapa tidak langsung mengirimkan token kepada mereka? Persetujuan biasanya diberikan bukan kepada pengguna akhir tetapi kepada kontrak pintar, sehingga mereka dapat menarik token dari dompet Anda sesuai kebutuhan. Misalnya di bursa terdesentralisasi yang dijelaskan di bagian selanjutnya.


## Bursa Terdesentralisasi

Misalkan Anda memiliki 100 token USDT dan ingin menggunakannya untuk membeli ETH. Anda bisa menggunakan bursa terpusat seperti Binance atau Coinbase di mana Anda membuat akun, memverifikasi ID Anda, dan dapat dengan mudah memperdagangkan token Anda.

Tetapi bagaimana jika Anda ingin memperdagangkan token yang tidak terdaftar di bursa ini? Salah satu keuntungan menggunakan bursa terdesentralisasi seperti Uniswap (di Ethereum dan jaringan L2-nya) dan Raydium (populer di Solana) adalah **beragam pilihan token** yang dapat diperdagangkan yang mereka dukung. Karena sifatnya yang terdesentralisasi, siapa pun dapat mendaftarkan token mereka di bursa ini dan menawarkannya kepada publik.

Ingat persetujuan token yang kami sebutkan di bab sebelumnya? Saat Anda ingin membeli beberapa token (misalnya ETH) di bursa terdesentralisasi, bagian integral dari perdagangan ini juga menjual token lain - misalnya USDT. Jadi kedua transfer ini harus terjadi pada waktu yang sama, sebagai bagian dari satu transaksi atomik. Dan jika salah satu bagian dari pertukaran gagal, seluruh operasi dibatalkan dan jumlahnya dikembalikan. Persetujuan token USDT Anda - atau token lain yang ingin Anda jual - memungkinkan bursa untuk menarik token Anda sebagai bagian dari satu swap multi-transfer tersebut.

Anda dapat memilih berapa banyak dari setiap token yang ingin Anda izinkan bursa untuk belanjakan. Jadi, misalnya, Anda dapat mengizinkan mereka menarik total 10 USDT dari dompet Anda. Saat Anda memulai swap, bursa dapat mentransfer token dari dompet Anda sebagai bagian dari swap ini beberapa kali, hingga mencapai batas gabungan. Anda juga dapat mengubah batas atau menetapkannya menjadi nol kapan saja.

Pengguna bursa terdesentralisasi yang lebih mahir juga dapat menambahkan token yang mereka miliki ke dalam pool perdagangan yang sudah ada. Proses ini disebut **penyediaan likuiditas**. Bursa terpusat mengandalkan likuiditas yang disediakan oleh penulis token atau mitra lainnya. Bursa terdesentralisasi juga dapat menerima likuiditas dari penulis token secara langsung - tetapi di atas itu, mereka dapat menerimanya dari pemegang token mana pun. Dan sebagai insentif bagi pengguna untuk menyediakan token mereka, bursa menawarkan sebagian dari biaya perdagangan yang dikumpulkan jika Anda memutuskan untuk mengunci token Anda di bursa.

## Fitur Lain: Airdrop dan Staking

Ingat contoh tata kelola yang kami sebutkan sebelumnya? Uniswap telah melakukan airdrop token UNI yang baru dibuat kepada pengguna Uniswap yang sudah ada. Jadi apa artinya mengirimkan token melalui airdrop?

Salah satu cara protokol meningkatkan penggunaan dan loyalitas mereka adalah dengan **airdrop** token spesifik protokol kepada pengguna. Biasanya terdapat persyaratan tertentu yang perlu diikuti agar memenuhi syarat untuk airdrop token. Misalnya, jika bursa terdesentralisasi memutuskan untuk melakukan airdrop token baru, mereka mungkin ingin pengguna mereka memiliki riwayat perdagangan dalam jumlah tertentu sebelum memenuhi syarat untuk mendapatkan hadiah. Atau ketika platform permainan daring mengirimkan token mereka, Anda mungkin perlu mengumpulkan sejumlah poin dalam permainan.

Jumlah token airdrop bervariasi per protokol. Kadang-kadang jumlah yang di-airdrop bernilai beberapa dolar per pengguna, terkadang lebih. Airdrop UNI yang disebutkan pada 2020 adalah salah satu yang terbesar dalam sejarah, di mana setiap pengguna menerima token UNI senilai lebih dari $1.000 pada saat itu - hanya karena mereka telah menggunakan protokol sebelumnya ketika masih belum terkenal.

Setelah protokol merilis token mereka, cara umum lain untuk meningkatkan keterlibatan pengguna adalah melalui **staking** token. Pengguna diberikan opsi untuk mengunci token mereka untuk menerima hadiah - semakin lama mereka menjaga token tetap terkunci (yaitu di-stake), semakin besar hadiahnya. Protokol biasanya menggunakan token yang di-stake ini sebagai cara untuk meningkatkan pool likuiditas mereka. Likuiditas yang lebih besar di pool menunjukkan dampak harga yang lebih rendah pada perdagangan - jadi secara efektif pengguna mendapatkan hadiah staking untuk membantu mencapai harga yang lebih stabil dari token yang mereka stake.


## Token Wrapped dan Token RWA

Misalkan Anda tertarik untuk mengambil pinjaman menggunakan protokol DeFi di Ethereum dan ingin menggunakan BTC Anda sebagai jaminan. Sementara BTC adalah token asli dari jaringan Bitcoin, BTC tidak tersedia langsung di Ethereum. Namun, ada token yang dapat dipertukarkan yang disebut WBTC yang mewakili BTC di Ethereum - "W" dalam hal ini berarti "**wrapped**".

Serupa dengan stablecoin yang kami perkenalkan sebelumnya, penerbit token wrapped memegang aset dasar di satu jaringan (misalnya BTC di Bitcoin) yang dapat Anda tukarkan dengan token wrapped di jaringan lain (misalnya WBTC di Ethereum). Dengan cara ini, harga token wrapped dipatok ke aset dasar dan Anda dapat menggunakannya sebagai jaminan di protokol DeFi yang tidak tersedia di jaringan aset asli atau cara lain yang Anda inginkan.

Melangkah lebih jauh, bukan hanya token dari jaringan lain yang dapat di-wrapped. Dalam beberapa tahun terakhir, kami juga melihat peningkatan aset keuangan tradisional seperti saham perusahaan dan emas yang direpresentasikan sebagai token ERC-20. Ini disebut sebagai **Token Aset Dunia Nyata** (atau RWA). Beberapa orang menggunakan token RWA sebagai cara untuk memperdagangkan harga aset dasar dengan lebih mudah, beberapa menggunakannya sebagai jaminan pada posisi DeFi, bagi sebagian orang ini adalah cara yang lebih efektif dan transparan dibandingkan keuangan tradisional.

Apakah Anda ingin belajar cara mengkode token yang dapat dipertukarkan Anda sendiri? Anda dapat melakukannya di bagian IDE berikutnya dengan mengklik tombol di bawah.

