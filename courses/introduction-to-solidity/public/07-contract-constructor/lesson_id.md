Fungsi konstruktor adalah jenis fungsi khusus yang **dieksekusi hanya sekali saat kontrak di-deploy**.

Jika Anda memiliki pengalaman dengan bahasa pemrograman berorientasi objek, Anda mungkin sudah familiar dengan konsep ini.

Kita dapat menggunakan fungsi konstruktor untuk mengatur nilai awal variabel status kontrak pada saat deployment.

```sol
contract MyFavoriteNumber {
  uint256 public myFavoriteNumber;

  constructor(uint256 _myFavoriteNumber) {
    myFavoriteNumber = _myFavoriteNumber;
  }
}
```

Dalam contoh di atas, konstruktor menetapkan variabel `myFavoriteNumber` agar sama dengan argumen `_myFavoriteNumber`-nya. Oleh karena itu, jika kontrak `myFavoriteNumber` di-deploy dengan nilai 4, maka nilai awal variabel status `myFavoriteNumber` akan menjadi 4.

Demikian pula, jika kontrak `MyFavoriteNumber` di-deploy dengan nilai 13, maka nilai awal variabel status `myFavoriteNumber` akan menjadi 13.

## Latihan

- Tambahkan konstruktor ke kontrak `Greeter` kita.
- Konstruktor harus menerima satu argumen bertipe string.
- Di dalam tubuh konstruktor, atur nilai variabel status publik `greeting` ke nilai dari argumen string konstruktor.
