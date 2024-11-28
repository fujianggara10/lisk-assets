###### Metadata dan tokenURI di dalam penyimpanan

Metadata NFT adalah sekumpulan anotasi yang kaya yang menggambarkan sebuah NFT.

Biasanya, skema metadata mencakup URI yang mengarah ke gambar. Karena sebagian besar NFT saat ini merepresentasikan karya seni digital, URI metadata gambar mengarah ke aset yang di-tokenisasi oleh NFT tersebut.

Untuk meningkatkan interoperabilitas antara komponen NFT on-chain dan komponen off-chain - seperti pasar NFT -, skema metadata akhirnya menyatu menjadi standar yang dikonsolidasikan: `ERC721 Metadata JSON Schema`.

```javascript
{
    "title": "Asset Metadata",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "Identifies the asset to which this NFT represents"
        },
        "description": {
            "type": "string",
            "description": "Describes the asset to which this NFT represents"
        },
        "image": {
            "type": "string",
            "description": "A URI pointing to a resource with mime type image/* representing the asset to which this NFT represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive."
        }
    }
}
```

Standar `ERC721 Metadata JSON Schema` juga dijelaskan dalam [eip-721 resmi](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md).

Contoh dari `ERC721 Metadata JSON Schema` adalah metadata berikut:

```javascript
{
  "name": "Agorapp Badge",
  "description": "Enrich your on-chain resume by collecting skill badges which document your accomplishments!",
  "image": "https://agorapp.dev/favicon.io",
}
```

Anda mungkin telah menyadari bahwa metadata NFT adalah entitas yang cukup besar, jika dibandingkan dengan variabel yang biasanya kita tangani dalam konteks on-chain.

Penyimpanan adalah komoditas yang mahal di jaringan Ethereum, itulah alasan mengapa sebagian besar NFT menyimpan metadata mereka di luar rantai (off-chain).

Untuk menghindari penggunaan layanan penyimpanan terpusat di luar rantai seperti s3 bucket, industri telah banyak mengadopsi platform peer-to-peer untuk kebutuhan penyimpanannya.

Beberapa solusi penyimpanan terdesentralisasi yang paling menonjol adalah:

- Ethereum Swarm
- IPFS dan Filecoin
- Arweave

Kecuali untuk IPFS - yang merupakan jaringan peer-to-peer -, platform lainnya adalah blockchain penuh yang dioptimalkan untuk penyimpanan sebagai kasus penggunaan utama. Mereka memungkinkan untuk ketahanan sensor yang kuat, tidak dapat diubah, dan jaminan desentralisasi.

Standar `ERC721 Metadata JSON Schema` didukung secara luas oleh industri, termasuk oleh OpenSea - pasar NFT terbesar. Spesifikasi lain yang diharapkan oleh OpenSea, seperti kebanyakan DApp dan API lainnya, adalah metode `tokenURI`.

Metode `tokenURI` adalah penunjuk ke lokasi off-chain dari metadata NFT. Pasar seperti OpenSea menggunakannya untuk mengambil data yang terkait dengan NFT dan menampilkannya.

Dalam kontrak `ERC721` OpenZeppelin, [fungsi `tokenURI`](https://github.com/agorapp-dao/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol#L90-L98) membangun pointer URI secara dinamis dengan menggabungkan [`_baseURI()`](https://github.com/agorapp-dao/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol#L100-L107) dan `tokenId`.

```solidity
/**
 * @dev See {IERC721Metadata-tokenURI}.
 */
function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
    _requireMinted(tokenId);
    string memory baseURI = _baseURI();
    return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
}
/**
 * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
 * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
 * by default, can be overridden in child contracts.
 */
function _baseURI() internal view virtual returns (string memory) {
    return "";
}
```

Output dari `_baseURI()` adalah string yang seharusnya menjadi prefiks umum dari semua URI, sedangkan `tokenId` menyediakan pengenal unik untuk membedakan URI yang dihasilkan.

## Latihan

- Buat `_baseURI()` mengembalikan "https://alice_in_wonderland/".
- Deklarasikan event bernama `CreatedNFT` yang mengambil dua argumen `indexed`: `address` dan `tokenId`.
- Panggil event `CreatedNFT` di akhir fungsi minting. Parameter yang perlu dicatat adalah penerima NFT yang dicetak dan token id dari NFT yang dicetak.
- Jangan menambahkan dependensi tambahan.
