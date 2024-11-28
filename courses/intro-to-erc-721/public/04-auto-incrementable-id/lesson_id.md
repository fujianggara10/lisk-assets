###### ID Token yang Dapat Ditambahkan Secara Otomatis

Sejauh ini, kita telah menetapkan `tokenId` dari NFT kita secara manual. Ini biasanya bukan metode ideal untuk mengasosiasikan ID unik ke NFT karena rentan terhadap kesalahan.

[Desain EIP-721](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md) tidak mewajibkan pola spesifik untuk memperbarui `tokenId` dari sebuah NFT. Satu-satunya persyaratan ketat adalah bahwa, setelah terkait dengan sebuah NFT, nilai `tokenId` yang mengidentifikasi harus unik dan tidak dapat diubah selama masa kontrak.

Pola yang paling banyak diadopsi untuk memperbarui variabel status `tokenId` dalam lingkup kontrak adalah dengan menetapkan nilai awalnya ke 0 dan kemudian meningkatkannya sebesar 1 untuk setiap NFT yang baru dicetak.

Pola ini telah menjadi sangat populer sehingga [OpenZeppelin menstandarkannya dalam sebuah pustaka yang disebut `Counters`](https://github.com/agorapp-dao/openzeppelin-contracts/blob/6bd6b76d1156e20e45d1016f355d154141c7e5b9/contracts/utils/Counters.sol), yang sering digunakan dengan kontrak erc-721 OpenZeppelin untuk mengelola token ID.

Namun, pustaka `Counters` cukup sederhana sehingga kita dapat mengimplementasikan versi yang lebih kecil dari pustaka tersebut sendiri.

## Latihan

Sejauh ini, fungsi mint kita menetapkan nilai sebagai token id yang diteruskan oleh pemanggil sebagai argumen fungsi uint256.

Namun, ini bukan praktik standar.

Biasanya, token id adalah nilai yang awalnya diatur ke 0 dan bertambah dalam urutan naik, meningkat sebesar satu setiap kali token berhasil dicetak.

- Hapus argumen uint256 yang diteruskan ke fungsi `mintBadge`.
- Token id diharapkan menjadi nilai yang awalnya diatur ke 0 dan meningkat sebesar 1 setiap kali NFT baru diterbitkan.
- Definisikan fungsi getter bernama `getCurrentTokenId` yang mengembalikan `tokenId` uint256 saat ini.
- Jangan menambahkan dependensi tambahan.
