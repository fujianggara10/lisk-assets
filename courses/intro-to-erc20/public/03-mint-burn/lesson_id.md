###### Mint dan burn token

Standar ERC20 tidak menentukan apa pun tentang meningkatkan atau mengurangi total suplai. Namun, karena penulis token sering membutuhkan fitur ini, banyak smart contract token yang memiliki fungsi yang memungkinkan peningkatan dan pengurangan total suplai sebagai ekstensi opsional dari standar minimal.

Implementasi `ERC20.sol` dari OpenZeppelin mendefinisikan fungsi `_mint(address,uint256)`. Seperti yang dinyatakan pada [halaman panduan mereka](https://docs.openzeppelin.com/contracts/5.x/erc20-supply), argumen pertama memegang alamat penerima token yang baru dicetak, dan argumen kedua adalah jumlah token.

Jumlah token mencakup desimal. Jadi misalnya, jika token Anda menggunakan 2 desimal, dan Anda ingin mencetak 5 token, nilai argumen kedua menghasilkan 500.

Saat Anda memeriksa kode mereka, Anda dapat melihat bahwa fungsi `_mint()` dideklarasikan dengan modifier visibilitas `internal`. Ini berarti kontrak Anda dapat memanggilnya - dengan asumsi bahwa kontrak Anda mewarisi dari `ERC20.sol` mereka. Tetapi karena visibilitas `internal`, fungsi ini tidak tersedia untuk pemanggil eksternal (misalnya, pengguna) secara langsung. Jika fungsi tersebut dapat dipanggil oleh siapa saja, itu harus memiliki visibilitas `external` atau `public`.

_OpenZeppelin `ERC20.sol`:_

```
function _mint(address account, uint256 value) internal
```

## Latihan

- Manfaatkan fungsi `_mint(address,uint256)` dari OpenZeppelin. Cetak 100 token penuh (jangan lupa desimalnya) ke alamat deployer (`msg.sender` dalam konstruktor).
