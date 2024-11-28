###### Implementasi ERC20 Kustom

Terkadang, sumber terbuka mungkin tidak cukup untuk kasus penggunaan Anda dan Anda mungkin perlu membangun implementasi kustom dari awal.

Berikut adalah implementasi kustom minimalis dari standar ERC20 yang melakukan semua yang seharusnya. Ini dapat mengambil saldo dari alamat mana pun, menunjukkan total suplai, memungkinkan pengguna memberikan persetujuan kepada yang lain, ... Tetapi tunggu - fungsi `transfer(address,uint256)` belum diimplementasikan.

Berikut apa yang dikatakan [standar ERC20](https://eips.ethereum.org/EIPS/eip-20) tentang transfer token:

> Transfer sejumlah token `_value` ke alamat `_to`, dan HARUS mengeluarkan event `Transfer`. Fungsi tersebut HARUS `throw` jika saldo akun pemanggil pesan tidak memiliki cukup token untuk dibelanjakan.
>
> _Catatan_ Transfer dengan nilai 0 HARUS diperlakukan sebagai transfer normal dan mengeluarkan event `Transfer`.
> Luangkan waktu sejenak dan baca kode yang ada. Fungsi `transferFrom(address,address,uint256)` mungkin sangat berguna untuk inspirasi.

## Latihan

- Implementasikan fungsi kustom `transfer(address,uint256)` sehingga sesuai dengan standar ERC20:
- Kurangi saldo pengirim. Solidity v0.8 secara otomatis `throws` (membatalkan transaksi) jika Anda mencoba mengurangi angka yang lebih besar dari yang lebih kecil.
- Tambahkan saldo penerima
- Emit event `Transfer`
- Kembalikan nilai `true`
