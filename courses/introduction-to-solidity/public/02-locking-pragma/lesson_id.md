Dalam pelajaran sebelumnya, kita menetapkan pragma kontrak kita ke nilai yang mendukung berbagai versi kompiler. Ini juga disebut sebagai **floating pragma**.

**Floating pragma** dianggap berbahaya.

Ketika pragma tidak diatur ke versi kompiler tertentu, kontrak mungkin dikompilasi dengan versi kompiler yang lebih lama atau lebih baru dari yang digunakan selama pengembangan dan pengujian lokal. Hal ini dapat menyebabkan ketidakkonsistenan atau membuka kontrak terhadap **bug yang belum ditemukan** yang mungkin memengaruhi versi kompiler yang lebih baru.

Akibatnya, mengunci pragma ke versi kompiler tertentu [adalah praktik keamanan yang direkomendasikan](https://consensys.github.io/smart-contract-best-practices/development-recommendations/solidity-specific/locking-pragmas/).

## Latihan

- Kunci kompiler Solidity ke versi `0.8.10`
