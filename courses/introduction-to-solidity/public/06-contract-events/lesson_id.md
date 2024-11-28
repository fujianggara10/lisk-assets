Menyimpan data di blockchain Ethereum mahal.

Pada saat yang sama, smart contract, seperti perangkat lunak lainnya, mendapatkan manfaat dari log yang dirancang dengan baik yang memungkinkan aplikasi pihak ketiga untuk mendengarkan dan bereaksi terhadap event on-chain.

Padanan log di blockchain Ethereum disebut `event`, dan penggunaannya jauh lebih murah daripada data `storage`. Namun, event memiliki tujuan yang berbeda.

Kasus penggunaan yang mungkin termasuk memungkinkan antarmuka aplikasi menampilkan notifikasi kepada pengguna saat ada perubahan status on-chain atau memantau smart contract untuk tujuan keamanan.

Event kontrak didefinisikan menggunakan kata kunci `event` dan, mirip dengan fungsi, dapat memiliki satu atau lebih parameter. Namun, tidak seperti fungsi, event tidak perlu menentukan lokasi data saat menggunakan variabel tipe kompleks sebagai parameter. Ini karena event tidak disimpan dalam `memory` atau `storage`, karena dirancang untuk konsumsi off-chain.

Anda dapat memicu sebuah `event` menggunakan kata kunci `emit`, seperti pada contoh berikut:

```sol
event Transfer(address from, address to, uint256 value);

function transfer(address to, uint256 value) public returns (bool) {
  // Transfer nilai yang ditentukan kepada penerima
  // ...
  emit Transfer(msg.sender, to, value);
  return true;
}
```

Kata kunci `indexed` dapat diterapkan hingga tiga parameter `event`. Parameter `indexed` lebih mudah difilter dan dicari oleh aplikasi yang mendengarkan.

```sol
event Transfer(address indexed from, address indexed to, uint256 value);

function transfer(address to, uint256 value) public returns (bool) {
  // Transfer nilai yang ditentukan kepada penerima
  // ...
  emit Transfer(msg.sender, to, value);
  return true;
}
```

## Latihan

- Deklarasikan sebuah `event` bernama `LogGreeting` yang mengambil `string` sebagai argumen.
- Jangan membuatnya dapat diindeks.
- Panggil event `LogGreeting` saat sebuah akun mengubah nilai variabel `greeting`.
- Event `LogGreeting` harus mencatat nilai baru dari variabel `greeting` dalam bidang bernama `updatedGreeting`.
