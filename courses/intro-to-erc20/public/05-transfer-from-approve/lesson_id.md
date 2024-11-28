###### Transfer dari alamat lain dan persetujuan

Dalam pelajaran sebelumnya, kami menjelaskan bagaimana transfer token dilakukan jika pemegang token memanggil fungsi `transfer()`. Tetapi bagaimana jika Anda ingin kontrak Anda dapat mentransfer token milik orang lain selain milik Anda sendiri?

Contoh bagus dari mekanisme ini adalah pertukaran terdesentralisasi. Saat melakukan swap (misalnya membeli WETH untuk USDC), pertukaran melakukan dua jenis transfer:

1. Menarik token USDC dari dompet pengguna
2. Dan mengirimkan WETH yang ditukar kepada mereka

Kita sudah tahu bagaimana langkah kedua bekerja. Pertukaran cukup memanggil `weth.transfer(userAddress, exchangedAmount)` - dan karena pemanggil fungsi `transfer()` adalah pertukaran, token dikirim dari saldo mereka.

Tetapi bagaimana mereka dapat mentransfer token dari dompet pengguna?

**_Transfer From_**.

Ada fungsi lain yang mirip dengan transfer reguler yang sudah dijelaskan. Dan yang ini disebut **Transfer From**.

Fungsi ini menerima 3 argumen, bukan 2 seperti fungsi transfer asli. Argumen baru di posisi pertama adalah alamat pengirim.

`transferFrom(address sender, address recipient, uint256 value)`

Saat Anda memanggil fungsi ini, Anda dapat mentransfer token dari dompet orang lain (`sender`) ke alamat siapa pun (`recipient`) - bahkan ke alamat Anda sendiri.

Menggunakan contoh pertukaran terdesentralisasi, kontrak pertukaran juga melakukan panggilan ini:

```
// transfer usdc dari pengguna ke alamat kita sendiri
usdc.transferFrom(userAddress, address(this), amountToBeExchanged);
```

Namun... Ini hanya mungkin jika pengirim telah memberikan Anda (pemanggil fungsi) persetujuan sebelumnya untuk mengoperasikan token mereka.

**_Persetujuan dan Batas Penggunaan (Allowance)_**.

Persetujuan untuk "transfer from" di masa depan hanya dapat diberikan oleh pemegang token dengan memanggil fungsi `approve(address,uint256)` pada kontrak token. Argumen pertama adalah alamat yang diizinkan untuk mengoperasikan token Anda (misalnya pertukaran). Dan argumen kedua adalah batas pengeluaran. Anda tidak perlu memberikan kendali penuh atas semua token Anda, tetapi Anda dapat membatasi berapa banyak yang diperbolehkan untuk mereka belanjakan.

Fungsi `approve(address,uint256)` mengeluarkan event `Approval(address,address,uint256)`. Argumen pertama adalah pemilik token yang memberikan persetujuan, argumen kedua adalah pemegang izin, dan yang ketiga adalah batas berapa banyak yang diizinkan untuk mereka belanjakan. Sama seperti dalam pelajaran sebelumnya, event ini berguna untuk aplikasi offchain yang dapat melacak persetujuan dan menampilkannya dengan cara yang lebih ramah pengguna.

Ada juga fungsi getter standar untuk mengambil jumlah yang disetujui saat ini. `allowance(address owner, address spender) returns (uint256)` menerima dua argumen - pemilik token dan pemegang izin token. Dengan cara ini Anda juga dapat memvalidasi apakah Anda telah memberikan persetujuan kepada Uniswap atau pertukaran terdesentralisasi lainnya, dan berapa banyak dari jumlah yang disetujui yang masih tersisa untuk dibelanjakan.

## Latihan

- Override fungsi `_approve(address,address,uint256,bool)` dari OpenZeppelin. Buat fungsi tersebut menerbitkan event baru `VitalikApproval` - tetapi hanya jika ada persetujuan untuk atau dari alamat Vitalik `0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045`.
