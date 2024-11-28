Solidity menyediakan beberapa variabel dan fungsi global bawaan yang dapat diakses di dalam kontrak. Berikut beberapa contohnya:

- `block` - berisi informasi tentang blok saat ini
- `msg` - berisi informasi tentang panggilan pesan saat ini
- `tx` - berisi informasi tentang transaksi saat ini

Lihat dokumentasi Solidity untuk [daftar lengkapnya](https://docs.soliditylang.org/en/v0.8.10/units-and-global-variables.html).

Salah satu variabel global yang paling sering digunakan adalah **msg.sender**. Nilainya sama dengan alamat akun yang memanggil fungsi kontrak saat ini.

`msg.sender` **tidak membedakan antara EOA dan akun kontrak**. Sebaliknya, variabel global lain yang disebut `tx.origin` hanya merujuk pada EOA yang paling langsung memanggil fungsi kontrak.

Hal ini memiliki implikasi keamanan yang penting, karena berarti jika, misalnya, akun EOA A memanggil kontrak B, yang pada gilirannya membuat panggilan eksternal ke fungsi pada kontrak C, dari perspektif C, `msg.sender` adalah B, sedangkan nilai `tx.origin` adalah A - karena A adalah EOA dari mana panggilan fungsi dari B ke C berasal.

## Latihan

- Deklarasikan variabel status publik bertipe `address` bernama `owner`.
- Atur nilai variabel status `owner` yang sebelumnya dideklarasikan agar sama dengan `msg.sender`. Lakukan ini **saat deployment**.
- Tambahkan nilai baru bernama `setter` ke event `LogGreeting` yang sebelumnya dideklarasikan. Nilai tersebut harus mencatat alamat akun yang memperbarui variabel status `greeter`.
- Parameter event `setter` harus menjadi parameter kedua dari event `LogGreeting`, dan harus mudah dicari (ingat kata kunci `indexed` yang dijelaskan dalam pelajaran tentang event kontrak!).
- Jangan hapus atau modifikasi fungsi yang telah didefinisikan sebelumnya.
