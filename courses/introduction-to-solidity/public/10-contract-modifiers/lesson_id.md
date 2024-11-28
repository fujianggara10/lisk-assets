Apa yang terjadi jika kita memiliki banyak fungsi yang hanya boleh dipanggil oleh pemilik kontrak?

Kita tentu bisa mengulangi apa yang kita lakukan pada pelajaran sebelumnya dan menyalin-tempel ekspresi "require" di mana pun dibutuhkan. Namun, pendekatan ini tidak akan terlalu [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself). Sebagai programmer yang baik, kita berusaha menghindari duplikasi kode kapan pun memungkinkan.

Masukkan **modifiers**!

**Modifiers digunakan untuk memodifikasi perilaku suatu fungsi**.

Kita bisa menggunakannya untuk mengenkapsulasi logika ekspresi `require` yang berulang di dalamnya.

```sol
modifier greaterThanTwo(uint256 _number) {
  require(_number > 2, "number too small");
  _;
}
```

Dalam contoh di atas, modifier `greaterThanTwo` akan selalu memastikan bahwa argumen `uint256` dari fungsi yang menerapkannya lebih besar dari 2.

Perhatikan karakter `_` di akhir! Ini disebut **merge wildcard**, dan memungkinkan untuk kembali ke alur normal fungsi setelah pemeriksaan di dalam modifier berhasil dilakukan.

Modifier `greaterThanTwo` dapat diterapkan pada fungsi dengan cara berikut:

```sol
pragma solidity 0.8.10;

contract FavoriteNumber {
  uint256 public myFavoriteNumber;

  modifier greaterThanTwo(uint256 _number) {
      require(_number > 2, "number too small");
      _;
  }

  function setFavoriteNumber(uint256 _myFavoriteNumber) public greaterThanTwo(_myFavoriteNumber) {
      myFavoriteNumber = _myFavoriteNumber;
  }
}
```

Dalam kontrak di atas, fungsi `setFavoriteNumber` akan melemparkan pengecualian jika `_myFavoriteNumber` kurang dari 3 dan akan berjalan seperti yang diharapkan jika tidak.

Perlu dicatat bahwa modifier tidak harus menerima argumen.

## Latihan

- Hapus pernyataan `require` yang dibuat pada pelajaran sebelumnya.
- Deklarasikan modifier bernama isOwner.
- Di dalam tubuh modifier, deklarasikan pernyataan `require` yang memastikan bahwa pemanggil fungsi harus menjadi pemilik kontrak.
- Terapkan modifier tersebut pada fungsi `setGreeting`.
