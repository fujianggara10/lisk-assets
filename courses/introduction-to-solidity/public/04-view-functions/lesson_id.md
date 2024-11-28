Dalam pelajaran sebelumnya, kita belajar bagaimana mendefinisikan variabel status di kontrak. Dalam pelajaran ini, kita akan membahas bagaimana dunia luar dapat mengakses variabel-variabel ini.

Setiap kali Anda mendeklarasikan variabel status **public**, kompiler secara otomatis membuat fungsi **getter** untuknya. Fungsi getter memungkinkan [akun Ethereum](https://ethereum.org/en/developers/docs/accounts/) mengambil nilai yang saat ini disimpan dalam variabel status dengan memanggilnya seolah-olah itu adalah fungsi.

Bagaimana jika kita mendeklarasikan variabel status **private**? Dalam hal ini, kita harus membuat fungsi getter sendiri!

```sol
uint256 private favoriteNumber;

function getFavoriteNumber() public view returns(uint256) {
  return favoriteNumber;
}
```

Seperti yang mungkin sudah Anda duga, `getFavoriteNumber` mengembalikan nilai yang disimpan dalam variabel privat `favoriteNumber`, yang nilainya sebaliknya tidak dapat diakses di luar cakupan kontraknya.

Mari kita uraikan sisanya dari deklarasi fungsi kita.

Mirip dengan variabel status, **fungsi bersifat public** jika dapat dipanggil baik dari dalam kontrak (atau kontrak turunan) maupun dari akun lain — baik itu akun yang dimiliki secara eksternal (EOA) atau smart contract lain.

Setelah **public**, kita memiliki kata kunci **view**: ini memastikan bahwa fungsi tersebut hanya untuk **membaca** dan tidak ada variabel status yang dapat diubah di dalam tubuhnya.

Terakhir, karena [Solidity adalah bahasa dengan tipe statis](https://docs.soliditylang.org/en/v0.8.10/types.html), Anda harus menentukan tipe dari nilai yang dikembalikan oleh fungsi.

Secara umum, dalam Solidity, fungsi digunakan untuk mendapatkan atau menetapkan informasi sebagai respons terhadap panggilan fungsi.

Jika suatu fungsi membaca data dari penyimpanan kontrak, maka fungsi tersebut disebut **view function**, dan harus diberi anotasi dengan kata kunci **view**.

## Latihan

- Ubah variabel status `greeting` menjadi `private`.
- Deklarasikan fungsi `public` bernama `getGreeting`.
- Fungsi `getGreeting` harus menjadi fungsi `view` yang mengembalikan nilai variabel `greeting`.

Catatan: dalam kasus nilai pengembalian `string`, lokasi data mereka harus ditentukan. Kita akan mempelajari apa itu lokasi data variabel di pelajaran berikutnya.

Untuk tujuan latihan saat ini, gunakan sintaks berikut:

```sol
returns(string memory _replace_with_it)
```
