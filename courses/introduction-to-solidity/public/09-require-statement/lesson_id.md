Salah satu dari banyak cara **msg.sender** bisa sangat penting adalah dalam menerapkan logika **kontrol akses** pada kontrak.

Saat ini, siapa pun dapat memanggil fungsi `setGreeting` dan mengubah nilai variabel status `greeting` menjadi argumen string yang mereka pilih. Bagaimana kita memastikan bahwa hanya kita - yang melakukan deployment kontrak - yang diizinkan mengubah variabel `greeting`?

Dalam pelajaran sebelumnya, kita mendefinisikan variabel `owner`, yang akan selalu sama dengan kita - para penerbit kontrak. Ini berarti bahwa yang perlu kita lakukan hanyalah memeriksa apakah `msg.sender` yang memanggil fungsi `setGreeting` sama dengan alamat `owner`. Jika ya, maka semuanya berlanjut seperti biasa. Jika tidak, maka kita harus melemparkan pengecualian, yang mencegah logika `setGreeting` lainnya dijalankan.

Kita dapat menggunakan fungsi **require** untuk mencapai ini:

```sol
function myFunction() public {
  require(firstValue == secondValue, "condition not satisfied");
}
```

Dalam contoh di atas, kita dapat melihat bahwa `require` **mengambil kondisi dan pesan kesalahan sebagai argumen**. Jika kondisinya tidak terpenuhi, maka pengecualian akan dilemparkan, dan tidak ada perubahan yang akan disimpan di kontrak.

## Latihan

- Tambahkan pernyataan `require` pada baris pertama di tubuh fungsi `setGreeting`.
- Pernyataan `require` harus memastikan bahwa fungsi `setGreeting` hanya dapat dipanggil oleh pemilik kontrak.
- Pernyataan `require` harus melemparkan string `caller is not the owner` jika kondisi yang ditetapkan tidak terpenuhi.
