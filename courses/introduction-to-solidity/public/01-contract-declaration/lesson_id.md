Mari kita mulai dengan memahami dasar-dasar tata letak file Solidity.

Semua file Solidity memerlukan pernyataan `pragma` yang harus ditempatkan di bagian paling awal. Pernyataan pragma memastikan bahwa kode dalam file akan menggunakan versi kompiler Solidity yang kompatibel.

Karena Solidity adalah bahasa yang dikembangkan secara aktif, fitur baru sering kali ditambahkan atau dihapus dengan setiap rilis. Perubahan ini mengikuti aturan [penomoran versi semantik](https://semver.org/).

```sol
pragma solidity 0.8.0;
```

Dalam pernyataan pragma di atas, kita menyatakan bahwa kode yang mengikuti hanya dapat dikompilasi oleh versi kompiler 0.8.0. Mencoba mengompilasi file yang sama dengan versi kompiler lain akan menghasilkan kesalahan.

Namun, pernyataan pragma juga dapat memberikan fleksibilitas tertentu. Anda dapat menggunakan simbol caret (`^`) untuk menunjukkan bahwa kode dapat dikompilasi dengan versi kompiler mana pun yang kompatibel dengan versi yang ditentukan:

```sol
pragma solidity ^0.8.2;
```

Dalam potongan kode di atas, kita menyatakan bahwa versi kompiler mana pun antara **0.8.2** dan perubahan besar berikutnya - dalam hal ini, **0.9.0** - akan dapat mengompilasi file kita.

Terakhir, setelah mendeklarasikan versi kompiler kita, kita dapat mendeklarasikan kontrak kita. **Kontrak** mirip dengan kelas dalam pemrograman berorientasi objek. Sebagian besar logika dalam basis kode kita akan dienkapsulasi dalam kontrak.

Deklarasi kontrak memiliki bentuk berikut:

```sol
contract FirstContract {}
```

## Latihan

Sebagai tradisi untuk mulai mempelajari bahasa pemrograman baru dengan program "Hello World", dalam kursus ini kita akan membuat kontrak `Greeter`.

- Tetapkan versi kompiler Solidity agar kompatibel antara 0.8.0 dan perubahan besar berikutnya (0.9.0)
- Deklarasikan kontrak kosong dan beri nama `Greeter`
