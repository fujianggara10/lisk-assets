###### Apa itu standar ERC-20

ERC-20 adalah salah satu standar Ethereum paling awal (secara harfiah yang ke-20). Ini memungkinkan kita untuk membuat token khusus pada jaringan EVM - jadi tidak hanya Ethereum tetapi juga Polygon, Binance Smart Chain, Arbitrum, dan lainnya.

Dalam kursus ini, kita akan melihat sisi teknis bagaimana token ERC20 bekerja. Kita akan mengeksplorasi beberapa implementasi yang sudah ada - dan sebagai validasi dari apa yang telah kita pelajari, kita akan membangun token ERC20 kita sendiri di pelajaran terakhir.

**_Nama dan simbol_**

Sebagai penulis token, Anda mungkin ingin memilih nama dan simbol token. Misalnya, salah satu token stablecoin terkenal menggunakan nama "Tether USD" dan simbol "USDT".

Banyak aplikasi offchain (seperti Etherscan dan berbagai jenis pelacak token) menampilkan nama dan simbol token Anda sebagai cara yang lebih ramah pengguna untuk mengidentifikasi berbagai token dibandingkan hanya menampilkan alamat mereka.

**_Implementasi Sumber Terbuka_**

Karena token ERC-20 adalah standar, ada banyak implementasi sumber terbuka dari standar ini yang dapat Anda manfaatkan saat membuat token Anda. Anda cukup memperluas kode mereka dan membangun di atas apa yang telah mereka buat, sehingga Anda tidak perlu menulis fitur dasar seperti transfer dan kueri saldo berulang kali.

Dalam pelajaran berikutnya, kita akan menggunakan implementasi ERC20 open source yang dibuat oleh OpenZeppelin. Mari kita mulai dengan membiasakan diri dengan dasar-dasar kode mereka.

Konstruktor mereka menerima dua argumen - nama token dan simbol. Mari kita coba.

## Latihan

- Ubah nama token dari `Some Token` menjadi `Agorapp Token`
- Ubah simbol token dari `SoT` menjadi `AGORA`
