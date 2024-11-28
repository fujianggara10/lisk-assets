Ketika Anda ingin menyimpan data yang persisten di kontrak Anda, Anda perlu menggunakan variabel status - nilai yang disimpan secara permanen di blockchain Ethereum melalui kontrak Anda.

Variabel status dapat memiliki berbagai jenis, seperti **uint, bytes, address, bool, string**. Untuk daftar lengkap, [kunjungi tautan ini](https://docs.soliditylang.org/en/v0.8.10/types.html).

Berikut adalah contoh cara mendefinisikan variabel status di kontrak:

```sol
contract Greeter {
  uint256 public myFavoriteNumber;
}
```

## Akun

Entitas yang dapat berinteraksi dengan smart contract disebut **akun**. Di jaringan Ethereum, ada dua jenis:

- **akun milik eksternal (EOA)**: Umumnya dianggap sebagai akun pengguna, EOA dikendalikan oleh seseorang dengan dompet Ethereum.
- **akun kontrak**: Ini adalah alamat tempat smart contract berada.

Baik EOA maupun akun kontrak dapat berinteraksi dengan kontrak Anda. Namun, penting untuk dicatat bahwa transaksi hanya dapat dimulai oleh EOA.

## Visibilitas

Tidak semua orang dapat mengakses variabel status. Variabel status dapat memiliki tingkat **visibilitas** yang berbeda, yang menentukan siapa yang dapat berinteraksi dengannya.

### Public

Variabel status publik dapat diakses oleh siapa saja, baik dari dalam kontrak maupun dari luar kontrak:

```sol
uint256 public myFavoriteNumber;
```

### Private

Variabel status privat hanya dapat diakses dari dalam kontrak tempat variabel tersebut didefinisikan:

```sol
uint256 private mySecretNumber;
```

### Internal

Variabel status internal tidak dapat diakses dari luar kontrak. Namun, dapat diakses dari **kontrak anak**.

Solidity adalah bahasa pemrograman berorientasi objek dan mendukung pewarisan. Kontrak anak adalah kontrak yang mewarisi dari kontrak lain:

```sol
contract ParentContract {
  uint256 internal myInternalNumber;
}

contract ChildContract is ParentContract {

  // ChildContract dapat mengakses myInternalNumber

}
```

## Latihan

- Deklarasikan variabel status bernama `greeting` dengan tipe string.
- Pastikan bahwa setiap akun dapat mengkueri variabel tersebut!
