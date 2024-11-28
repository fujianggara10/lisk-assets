###### Apa itu Standar ERC721

Token Ethereum adalah aset digital yang diterbitkan di atas blockchain Ethereum.

Secara umum, token ini dapat dibagi menjadi dua jenis: fungible (dapat ditukar) atau non-fungible (tidak dapat ditukar).

Fungibilitas adalah sifat yang membuat satu unit aset dapat dipertukarkan dengan unit lain dari jenis aset yang sama.

Dalam praktiknya, uang kertas $10 dianggap fungible karena sama dengan uang kertas $10 lainnya; sebaliknya, sebuah karya seni tidak bisa dianggap dapat dipertukarkan dengan karya seni lainnya: aset dengan karakteristik unik seperti karya seni termasuk dalam kategori aset non-fungible.

**_NFT digunakan untuk merepresentasikan aset non-fungible_**.

Standar token yang paling banyak digunakan untuk mengkodekan NFT di blockchain Ethereum adalah ERC721.

[OpenZeppelin](https://docs.openzeppelin.com/contracts/4.x/) adalah salah satu pustaka yang paling sering digunakan untuk pengembangan smart contract. Pustaka ini menyertakan implementasi dari standar token ERC721, yang akan kita gunakan dalam kursus kita.

Seperti karya seni, contoh lain dari aset non-fungible adalah badge. Badge, seperti item yang Anda kumpulkan di konferensi atau saat menyelesaikan level dalam permainan video, memiliki keunikan yang tidak bisa dibandingkan satu sama lain.

Sepanjang kursus kita, kita akan mengimplementasikan Agorapp Badge kita sendiri.

Anda bisa membaca EIP-721, yang mendefinisikan standar ERC-721, [di sini](https://eips.ethereum.org/EIPS/eip-721)

## Latihan

- Deklarasikan kontrak bernama `AgorappNFT` yang mewarisi kontrak ERC721 dari OpenZeppelin.
- Nama token ERC721 yang diharapkan adalah `Agorapp Badge` dan simbolnya diharapkan adalah `AGORA`.
- Jangan tambahkan dependensi tambahan.
