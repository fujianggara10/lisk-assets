Secara umum, dalam Solidity, fungsi digunakan untuk mendapatkan atau menetapkan informasi sebagai respons terhadap panggilan fungsi.

Pengecualian utama untuk pernyataan di atas adalah fungsi `pure`. Sebuah fungsi harus dinyatakan sebagai `pure` ketika fungsi tersebut tidak membaca atau memodifikasi status.

```sol
function computeSum(uint256 _x, uint256 _y) pure returns(uint256) {
  return _x + _y;
}
```

Ketika suatu fungsi melakukan perubahan pada penyimpanan kontrak, maka fungsi tersebut harus dideklarasikan tanpa kata kunci `view` atau `pure`.

```sol
uint256 private favoriteNumber
function setSecretNumber(uint256 _favoriteNumber) public returns(uint256) {
  favoriteNumber = _favoriteNumber;
}
```

Mirip dengan nilai pengembalian, argumen suatu fungsi juga harus diberi anotasi dengan tipe masing-masing.

Terakhir, untuk beberapa tipe tertentu yang disebut [**reference types**](https://docs.soliditylang.org/en/v0.8.10/types.html#reference-types), **lokasi data harus selalu ditentukan**.

Lokasi data merujuk pada **lokasi di mana nilai variabel disimpan**. Dalam Solidity, ada tiga lokasi data yang mungkin: `storage`, `memory`, dan `calldata`:

- **storage**: Variabel penyimpanan dipertahankan di blockchain dan nilainya bertahan antar transaksi. Mereka dialokasikan dalam slot penyimpanan di penyimpanan kontrak.
- **memory**: Ini adalah lokasi data sementara. Variabel `memory` dibuat dan digunakan dalam satu panggilan fungsi. Setelah panggilan fungsi selesai, variabel `memory` dihancurkan.
- **calldata**: Ini adalah lokasi data khusus yang hanya dapat digunakan untuk argumen fungsi saat fungsi kontrak dipanggil dari luar kontrak. Karena itu, hanya dapat diterapkan pada fungsi `public` dan `external`. `calldata` bersifat read-only dan tidak dapat dimodifikasi oleh fungsi.

Lokasi data `calldata` dapat ditentukan seperti pada contoh berikut:

```sol
function computeStringLength(string calldata _string_) public returns(uint256) {
  // Mengakses argumen input calldata (sebuah string)
  uint256 stringLength = bytes(_string_).length;
  return stringLength;
}
```

Perhatikan bahwa `calldata` hanya dapat digunakan untuk parameter fungsi dan **TIDAK untuk tipe pengembaliannya**. Itulah sebabnya dalam pelajaran sebelumnya kami merekomendasikan menggunakan lokasi data `memory` untuk mengembalikan nilai string dari suatu fungsi.

## Latihan

- Deklarasikan fungsi `public` bernama `setGreeting`.
- Fungsi `setGreeting` perlu mengambil string sebagai argumen.
- Gunakan nilai string yang diteruskan sebagai argumen ke `setGreeting` untuk memperbarui nilai variabel status `greeting`.
