###### Kontrol akses

Ketika kita berbicara tentang kontrol akses, kita merujuk pada serangkaian kebijakan yang ditegakkan dalam kode kita untuk membatasi akses ke fitur tertentu dalam smart contract hanya untuk kelompok entitas tertentu.

Dalam dunia pengembangan blockchain, kontrol akses adalah konsep keamanan paling mendasar saat mengembangkan smart contract.

Sifat kode on-chain yang tidak dapat diubah membuat bug menjadi sangat sulit untuk diperbaiki. Bahkan dalam kasus di mana [kontrak dapat ditingkatkan](https://docs.openzeppelin.com/upgrades-plugins/1.x/writing-upgradeable), memperbaiki bug tetap bukanlah tugas yang mudah.

Salah satu jenis kerentanan yang paling umum adalah kebijakan kontrol akses yang salah dikonfigurasi.

Tidak setiap fungsi harus dapat diakses oleh semua akun.

Sebagai contoh, mari kita lihat kontrak dasar berikut:

```sol
pragma solidity 0.8.10;

contract Bank {
    address public owner;
    address public feeCollector;
    uint256 public bankFee;
    uint256 public collectedFees;
    mapping (address => uint) public balances;

    constructor(address _feeCollector, uint256 _bankFee) {
        owner = msg.sender;
        feeCollector = _feeCollector;
        bankFee = _bankFee;
    }

    function deposit() external payable {
        require(msg.value > bankFee, "Deposit must be greater than bank fee");
        collectedFees += bankFee;
        balances[msg.sender] += msg.value - bankFee;
    }

    function withdraw(uint256 amount) external {
        // Abaikan jika seseorang mencoba menarik 0 atau jika mereka tidak memiliki Ether yang cukup untuk melakukan penarikan.
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function collectFees() external {
        require(msg.sender == feeCollector || msg.sender == owner, "account not authorized to collect fees");
        payable(msg.sender).transfer(collectedFees);
        collectedFees = 0;
    }

    function setFeeCollector(address _newFeeCollector) external {
        require(msg.sender == owner, "account not authorized to set fee collector");
        feeCollector = _newFeeCollector;
    }
}
```

Ada dua peran istimewa:

- `feeCollector`, yang dapat melakukan satu operasi istimewa
- `owner`, yang dapat melakukan semua operasi istimewa - termasuk mengelola identitas akun `feeCollector`.

Meski contoh ini sederhana, ini tetap menunjukkan perlunya peran dan tingkat izin yang berbeda dalam smart contract. Mempelajari cara menyeimbangkan cakupan izin dan peran ini adalah aspek penting lain dari kontrol akses berbasis peran.

Kontrol akses dapat bervariasi dari solusi dasar, di mana hanya ada satu entitas istimewa, hingga sistem yang lebih canggih dengan banyak peran dan tingkat izin.

Dalam pelajaran ini, kita akan fokus pada skenario kontrol akses yang paling sederhana.

Lihatlah kontrak `AgorappNFT`. Apakah Anda melihat ada fungsi yang harus dibatasi?

## Latihan

Dalam pelajaran terakhir, kita mengimplementasikan fungsi mint. Namun, waspadalah! Saat ini, semua orang dapat memanggilnya - yang berarti siapa saja dapat mencetak sebanyak mungkin Agorapp NFT sesuai keinginan mereka!

Untuk mengatasi masalah ini, kita perlu menambahkan batasan kontrol akses.

- Kontrak `AgorappNFT` harus menerima argumen bertipe `address` saat deployment.
- Pemanggilan `mintBadge` harus dibatasi.
- Pemanggilan yang tidak sah ke fungsi `mintBadge` harus dibatalkan dengan pesan error `UNAUTHORIZED_MINTER`
- Jangan menambahkan dependensi tambahan.
