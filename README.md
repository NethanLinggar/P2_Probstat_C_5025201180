# P2_Probstat_C_5025201180
Pengerjaan Praktikum 2 dari mata kuliah Probabilitas dan Statistika 2022

| Nama                       | NRP        |
|----------------------------|------------|
| Nethaneel Patricio Linggar | 5025201180 |

<br>

## Soal 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

Berdasarkan data pada tabel yang ada, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

### Poin A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas!

Langkah pertama penyelesaian adalah mencari selisih dari tiap hasil.

Lalu pakai function sd() untuk menampilkan standar deviasi-nya.

![](screenshots/1a.jpg)

### Poin B
Carilah nilai t (p-value)!

Untuk mencari nilai t terutama p-value maka bisa menggunakan fungsi t.test.

![](screenshots/1b1.jpg)

Selain itu juga bisa memakai rumus yang sudah ada.

![](screenshots/1b2.jpg)

### Poin C

Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴”!

Hal tersebut dapat ditemukan kembali dengan menggunakan function t.test.

![](screenshots/1c.jpg)

<br>

## Soal 2

Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

Perhitungan yang perlu dilakukan seperti berikut.

![](screenshots/2.jpg)

### Poin A
Apakah Anda setuju dengan klaim tersebut?

Setuju, arena kesimpulan dari uji z menolak H0, sehingga mobil dikemudikan rata-rata lebih dari 20000 kilometer per tahun.

### Poin B
Jelaskan maksud dari output yang dihasilkan!

Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900
Maka null hipotesis adalah 
```
H0 : μ = 20000
```
Alternatif hipotesisnya yaitu
```
H1 : μ > 20000
```

### Poin C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

 Kesimpulan yang didapat adalah bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.

<br>

## Soal 3
### Poin A
### Poin B
![](screenshots/3b.jpg)
### Poin C
![](screenshots/3c.jpg)
### Poin D
![](screenshots/3d.jpg)
### Poin E
### Poin F

<br>

## Soal 4
### Poin A
![](screenshots/4a.jpg)
### Poin B
### Poin C
![](screenshots/4c.jpg)
### Poin D
### Poin E
### Poin F

<br>

## Soal 5
### Poin A
![](screenshots/5a.jpg)
### Poin B
![](screenshots/5b1.jpg)
![](screenshots/5b2.jpg)
### Poin C
![](screenshots/5c.jpg)
### Poin D
![](screenshots/5d.jpg)
### Poin E
![](screenshots/5e1.jpg)
![](screenshots/5e2.jpg)