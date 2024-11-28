###### Implementasi Sumber Terbuka

[Standar ERC20](https://eips.ethereum.org/EIPS/eip-20) mendefinisikan beberapa fungsi - `name()`, `symbol()`, `decimals()`, `balanceOf(uint256)`, `totalSupply()`, `transfer(address,uint256)`, `approve(address,uint256)`, `allowance(address,address)`, dan `transferFrom(address,address,uint256)` - serta event `Transfer(address,address,uint256)` dan `Approval(address,address,uint256)`.

Semua ini sudah diimplementasikan dalam kontrak `ERC20.sol` dari OpenZeppelin yang diimpor dan dependensinya. Itulah mengapa Anda tidak melihatnya dalam kode ini.

**_Decimals_**

Node EVM dijalankan pada berbagai jenis komputer yang menggunakan berbagai jenis prosesor. Salah satu tantangan dari sistem multi-platform yang hingga saat ini belum terpecahkan adalah bekerja dengan angka desimal.

Pembagian matematika sederhana 1/3 mungkin menghasilkan hasil dengan:

- presisi hingga 16 desimal dibulatkan ke bawah pada satu jenis prosesor
- namun juga - presisi hingga 17 desimal dibulatkan ke atas pada jenis prosesor lainnya

Untuk mengurangi kesalahan pembulatan, EVM dan Solidity sama sekali tidak menggunakan jenis desimal. Tidak ada `float`, `double`, atau jenis desimal lainnya yang mungkin Anda ketahui dari bahasa pemrograman lain. Sebaliknya, kita menyimpan angka desimal sebagai `integer` (dan seringkali sebagai `unsigned integer`) dengan jumlah desimal yang telah ditentukan sebelumnya.

_(Untuk pengembang tingkat lanjut: Ya, ada pengecualian dari aturan ini. Dalam beberapa kasus, Anda mungkin menemukan angka desimal di Solidity sebelum kompilasi ke bytecode - tetapi semuanya diubah menjadi integer selama kompilasi (misalnya `0.5 * 2` berubah menjadi `1`). Jika transformasi ini gagal (misalnya dalam kasus `0.4 * 2`), kompilasi gagal.)_

Misalkan Anda menentukan bahwa semua angka Anda akan menggunakan **2 desimal**.

Jika Anda ingin menyimpan angka "satu", Anda cukup menyimpannya sebagai `100`.

"Menyatu setengah" kemudian menjadi `150`.

Dengan **3 desimal** yang telah ditentukan, "satu" menjadi `1000`.

Dan dengan **18 desimal**, "satu" disimpan sebagai `1000000000000000000` (satu dan 18 nol). Yang membuat "setengah" disimpan sebagai `500000000000000000` (lima dan 17 nol).

Jumlah desimal yang telah ditentukan sebelumnya yang digunakan token Anda dikembalikan dari fungsi `decimals()` dengan tipe `uint8`. `uint8` adalah singkatan dari "unsigned integer dengan panjang 8 bit", yang berarti nilai maksimal desimalnya adalah 255. Namun jumlah desimal yang biasa dan paling umum Anda lihat adalah 18, mungkin karena token asli Ethereum, ETH, juga menggunakan 18 desimal.

## Latihan

- Override fungsi `decimals()` (dari `ERC20.sol`) di kontrak Anda sendiri untuk mengubah jumlah desimal menjadi 6.
