# Pengantar Token Non-Fungible (NFT)

## Cara Kerja Token Non-Fungible (NFT)

Token non-fungible, atau NFT, adalah jenis aset digital yang merepresentasikan kepemilikan item atau konten unik di blockchain. Berbeda dengan token fungible (seperti token ERC-20), yang dapat dipertukarkan dan memiliki nilai yang sama dengan token lain dari jenis yang sama, sebagian besar NFT bersifat unik dan biasanya tidak dapat dipertukarkan satu-satu.

Ada beberapa standar untuk NFT, tetapi yang paling umum digunakan adalah ERC-721. Itulah sebabnya Anda mungkin sering melihat istilah token ERC-721 digunakan sebagai sinonim untuk NFT.

NFT sering dirilis dalam kelompok dengan tema atau karakteristik serupa yang disebut koleksi. Misalnya, Anda mungkin memiliki NFT yang merepresentasikan gambar kucing dari seorang seniman dalam satu koleksi, dan NFT lain berupa gambar anjing dari seniman lain dalam koleksi berbeda. Salah satu koleksi terkenal adalah Bored Ape Yacht Club, yaitu kumpulan gambar digital animasi kera dengan berbagai kostum dan aksesoris.

Setiap non-fungible token adalah representasi on-chain dari kombinasi elemen berikut:

- **ID Token Numerik**: Bilangan bulat sederhana yang unik untuk setiap token dalam sebuah koleksi.
- **Alamat Kontrak Koleksi**: Seperti alamat dompet Anda, setiap kontrak pintar koleksi dapat diidentifikasi dengan alamat uniknya di jaringan.
- **Jaringan**: Jaringan blockchain tempat koleksi berada, seperti Ethereum atau Lisk.

![Picture](/markdown/photo_02.jpg)

Misalnya: NFT dengan ID 6477 yang ditempatkan di koleksi dengan alamat `0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d` di jaringan Ethereum berisi tautan ke gambar di atas.

Mungkin ada NFT lain yang menghubungkan ke gambar yang sama. Namun, yang membuat NFT benar-benar unik adalah kombinasi dari ketiga parameter ini — ID token, alamat koleksi, dan jaringan.

Dikatakan demikian, NFT tidak hanya tentang gambar, karena seringkali juga mewakili jenis konten dan aset lainnya...

## NFT Bukan Hanya Gambar - Kasus Penggunaan

Seperti yang disebutkan di bagian sebelumnya, NFT adalah jenis token unik yang mungkin berisi tautan ke konten lain.

Jenis seni digital lain yang sering dihubungkan dengan NFT termasuk video dan **musik**. Misalnya, ada pasar NFT untuk pencipta musik di mana mereka dapat memperdagangkan token yang mewakili trek—bagian-bagian yang membentuk sebuah lagu. Karena struktur NFT, penulis lagu dapat otomatis menerima royalti dari setiap penjualan atau pemutaran lagu tersebut.

Contoh hebat lainnya adalah industri **permainan**. NFT dapat mewakili item permainan (misalnya, pedang, karakter yang dapat dimainkan, peti hadiah, atau bahkan lahan di dalam permainan) dan kulitnya. Beberapa permainan daring, seperti Decentraland, dibangun sedemikian rupa sehingga setiap item yang dapat dimainkan adalah NFT yang juga bisa digunakan dalam permainan lain atau diperdagangkan di pasar terdesentralisasi.

Dalam dunia digital, beberapa NFT mungkin mewakili **nama domain** untuk situs web. Setelah Anda mendaftarkan nama domain dengan salah satu penyedia yang ramah-NFT, Anda juga menerima hak untuk menggunakan nama domain ini, mengarahkannya ke situs web mana pun, atau memperdagangkannya di pasar tanpa perlu registrasi terpusat.

Ingat bursa terdesentralisasi Uniswap dari pelajaran kita tentang token fungible? Penyedia likuiditas juga menerima NFT sebagai representasi standar dari bagian likuiditas mereka secara keseluruhan. Jadi, jika Anda menyediakan ETH dan USDT, sebagai gantinya Anda menerima NFT yang menyatakan, "pemilik NFT ini berhak menarik jumlah tertentu dari ETH dan USDT dari pool likuiditas." Anda dapat menyimpan NFT ini di dompet Anda atau memberikannya kepada orang lain. Namun ingat—siapa pun yang memegang NFT ini, mereka berhak menarik jumlah likuiditas yang diwakilinya. Dan begitu Anda menarik bagian likuiditas Anda dari pool, NFT ini akan dihancurkan.

## Mengakses NFT dari Dompet Anda

Jadi bagaimana Anda dapat melihat NFT yang dimiliki oleh alamat Anda? Seperti halnya dengan token asli dan token fungible, berinteraksi dengan NFT memerlukan dompet digital. Anda dapat memilih dari berbagai jenis dompet.

- **Ekstensi Browser**: Banyak dompet berbasis browser, seperti MetaMask, dapat melihat NFT Anda, mentransfernya ke akun lain, dan melakukan operasi lainnya.
- **Dompet Seluler**: Salah satu kasus penggunaan NFT yang hebat adalah bahwa NFT dapat mewakili, misalnya, tiket acara yang mudah dilacak dan dapat diperdagangkan di bursa terdesentralisasi. Setelah Anda memasuki tempat acara, Anda cukup membuka dompet seluler Anda, dan penyelenggara dapat memindai kode QR yang ditautkan oleh tiket NFT.
- **Dompet Perangkat Keras**: Anda juga dapat menyimpan NFT Anda di dompet perangkat keras seperti Ledger atau Trezor. Ini dianggap sebagai opsi teraman untuk token dengan nilai tinggi, karena penyimpanan dingin sering kali dilindungi oleh langkah keamanan tambahan seperti kode PIN dan kata sandi khusus.

## Transfer dan Persetujuan

Transfer token adalah salah satu fitur dasar dari dompet apa pun yang mendukung kerja dengan NFT. Anda memilih token tertentu yang ingin ditransfer, alamat penerima, dan menekan tombol kirim. Tetapi Anda juga perlu memastikan bahwa Anda memiliki sejumlah kecil **token asli** (misalnya, ETH) di jaringan tempat Anda mengirim NFT untuk menutupi **biaya transaksi**, seperti yang disebutkan di pelajaran sebelumnya.

Anda mungkin juga ingin memberi persetujuan kepada orang lain untuk mengoperasikan NFT Anda. Tapi mengapa Anda memberikan persetujuan daripada langsung mengirimkan token kepada mereka? Persetujuan sering diberikan bukan kepada pengguna akhir tetapi kepada kontrak pintar, misalnya, ke pasar yang akan kita bahas lebih mendalam di bagian mendatang.

Jika Anda memutuskan untuk menjual NFT Anda untuk token fungible di pasar, keseluruhan perdagangan terdiri dari beberapa langkah yang harus terjadi secara bersamaan. Persetujuan untuk pasar memungkinkan mereka menarik NFT dari dompet Anda saat perdagangan berlangsung, dan pada saat yang sama, mereka juga dapat mengirimkan token fungible yang Anda tukarkan dengan NFT tersebut.

Ada dua jenis persetujuan terkait NFT:

1. Anda dapat menyetujui seseorang untuk mengoperasikan **satu token tertentu** dari satu koleksi tertentu. Anda dapat mengulangi jenis persetujuan ini sebanyak yang Anda inginkan, dengan token berbeda dalam koleksi yang sama atau di koleksi yang berbeda.
2. Anda juga dapat memberi mereka persetujuan untuk mengoperasikan **semua token** yang Anda miliki dalam koleksi tertentu. Dengan cara ini, Anda tidak perlu terus-menerus memberikan persetujuan satu kali jika Anda ingin mereka mengoperasikan beberapa token.

Penting untuk dipahami bahwa operator yang disetujui (kepada siapa Anda memberikan persetujuan) dapat mentransfer NFT yang disetujui ini keluar dari dompet Anda. Jadi tetap berhati-hati dan berikan persetujuan hanya kepada orang atau protokol yang Anda percayai.

## Contoh Dunia Nyata

Kami sudah menyebutkan beberapa contoh di bagian Kasus Penggunaan. Mari kita lihat lebih dekat NFT Uniswap yang mewakili likuiditas.

Dalam versi 3 mereka, protokol Uniswap memperkenalkan likuiditas terkonsentrasi, artinya Anda dapat menyediakan likuiditas bukan hanya untuk seluruh pool tetapi juga untuk rentang harga tertentu. Semakin kecil rentang harga di mana Anda menyediakan likuiditas, semakin besar bagian biaya perdagangan yang dapat Anda peroleh.

Begitu Anda menyediakan likuiditas dalam rentang tertentu, Uniswap membuat NFT untuk Anda yang mewakili bagian likuiditas ini. Ini berisi beberapa informasi penting seperti:

- Pool tertentu tempat Anda menyediakan likuiditas
- Token fungible yang Anda setorkan (misalnya, ETH dan USDC)
- Rentang harga posisi likuiditas (misalnya, antara 2.000 dan 3.000 USDC untuk 1 ETH)

Dan karena NFT sering **terhubung** dengan gambar, mereka juga membuat gambar yang dihubungkan oleh NFT, menampilkan grafik dari posisi likuiditas dan informasi berguna lainnya.

Sebagai contoh, [di sini](https://opensea.io/assets/ethereum/0xc36442b4a4522e871399cd717abdd847ab11fe88/1) Anda dapat melihat NFT posisi likuiditas pertama, yang dibuat oleh pendiri Uniswap Hayden Adams. Nilai "Tick" negatif mewakili rentang harga—dalam hal ini, tick bawah -50580 mewakili sekitar 0,00636 WETH per 1 token UNI, dan tick atas -36720 mewakili sekitar 0,02543 WETH per 1 UNI. Setiap kali token UNI diperdagangkan di antara titik harga ini, pemilik NFT menerima sebagian dari biaya perdagangan.

Tautannya mengarah ke OpenSea, salah satu **pasar** NFT terbesar dan paling awal. Ini menampilkan semua koleksi NFT di berbagai rantai dan semua token dalam koleksi tersebut. Begitu pemilik NFT saat ini memutuskan untuk menjual NFT mereka, mereka dapat melakukannya di OpenSea atau pasar lainnya.

## Pasar NFT

Pasar NFT adalah platform tempat Anda dapat **memperdagangkan** NFT. Platform ini mirip dengan situs e-commerce dan rumah lelang daring tetapi beroperasi di teknologi blockchain, memastikan transparansi, keamanan, dan desentralisasi yang lebih dibandingkan sistem tradisional.

Beberapa pasar terkenal termasuk [OpenSea](https://opensea.io/), [Rarible](https://rarible.com/), dan [SuperRare](https://superrare.com/). Secara umum, situs pasar memindai semua koleksi NFT baru dan yang sudah ada di beberapa jaringan, mencari token yang baru dibuat. Begitu mereka menemukan token baru, mereka dapat menampilkan detailnya, seperti alamat penulis dan gambar yang dihubungkan oleh NFT, di situs pasar.

Siapa pun dapat menggunakan pasar untuk mendaftarkan NFT yang mereka miliki untuk dijual atau membeli NFT. Saat menggunakan pasar ini, Anda dapat menelusuri NFT yang tersedia, dan setelah **menghubungkan dompet Anda**, Anda dapat menawar atau membeli langsung.

Karena listing terkait dengan pasar tertentu, beberapa penulis mungkin memilih untuk mendaftarkan NFT mereka untuk dijual hanya di satu atau dua situs terbesar, sementara yang lain mungkin ingin mendaftarkannya sebanyak mungkin.

Apakah Anda ingin mencoba membangun koleksi Anda sendiri? Jika ya, lanjutkan ke kursus IDE berikutnya di mana Anda dapat belajar untuk membuat kontrak pintar koleksi NFT sederhana.

