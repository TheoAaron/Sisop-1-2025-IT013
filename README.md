# Sisop-1-2025-IT013

# SOAL 2

saya membuat script agar dsotm.sh bisa menjalankan commanc –play”<Track>”. Saya menggunakan for loop untuk menyimpan semua argument ke variavel arg, kemudian saya menggunakan switch case dan mencocokkan nilai dari argument apakah sama dengan –play=*. Jika sama maka saya akan menghapus karakter ‘–play=’ dan hanya menyisakan karakter setelah ‘=’ yang akan disimpan ke TRACK.

![Image](https://github.com/user-attachments/assets/31f6537f-54b3-4763-bba9-bba068cf2497)

Saya mencocokkan nilai dari TRACK dengan Speak to Me, jika sama akan melakukan while loop tak terbatas dan menjalankan API afirmasi 

![Image](https://github.com/user-attachments/assets/94e35db7-79dd-41a6-a115-1cdaefe3aa74)

Jika nilai TRACK cocok dengan On the Run maka akan menjalankan progressbar. yang pertama saya membuat perhitungan pemrosesan data nya

![Image](https://github.com/user-attachments/assets/697ec47b-88de-4e06-b70e-2c2b6d884d43)

saya mengganti nilai integer dari  _done dan _left menjadi string 

![Image](https://github.com/user-attachments/assets/aebeed47-945c-4ff1-87bc-dd530261bb58)

segmen print progress bar nya 

![Image](https://github.com/user-attachments/assets/0e9006ef-4db1-4a0b-9e15-c66c61d45360)

menggunakan for loop untuk menyimpan urutan angka dari start hingga end ke number, dengan proses progress bar random dari 0.1 – 1 

![Image](https://github.com/user-attachments/assets/d9369bc2-5412-4cfa-b1ea-6ad381718b43)

Jika nilai TRACK cocok dengan time maka akan mencetak looping tak terbatas dari date dengan penambahan waktu secara real time

![Image](https://github.com/user-attachments/assets/6c1a5e57-918e-4bab-a93a-458e79035aeb)

Jika nilai TRACK cocok dengan money maka akan mencetak latar belakang gelap dan teks bold 

![Image](https://github.com/user-attachments/assets/ed38d9d8-b8d5-4f84-bb12-cc8570ced5f2)

Melakukan loop tak terbatas dan mencetak baris, kolom, angka acak, dan angka acak dengan sisa bagi dengan 17 (karena karakter ada 17 beserta spasi). 

![Image](https://github.com/user-attachments/assets/6ce43076-0667-4b98-a9b0-e97027649fcc)

Meneruskan output ke script awk untuk membuat animasi hujan matriks 

![Image](https://github.com/user-attachments/assets/49fa5b6f-7a16-4227-9769-fc0dd98fd41f)

Jika nilai TRACK cocok dengan Brain Damage maka akan memberikan output ps tapi yang saya pilih yang menurut saya orang awam bisa memahami proses tersebut secara realtime dengan perbaruan 1 detik (hanya menampilkan 10 proses dari atas, karena biasanya seseorang pusing jika melihat secara lengkap)

![Image](https://github.com/user-attachments/assets/0e2a6e6e-adf7-43ff-9e01-15fb896ea956)

KENDALA

- ${arg#*=} : lupa tidak memberi { } yang mengakibatkan error karena tidak ada nilai seperti itu
- [ "$TRACK" = "Speak to Me" ] : tidak memberikan spasi antar [ ] yang mengakibatkan kode langsug tidak bisa dijalankan
- di bagian brain damage tidak memberikan -e yang mengakibatkan output tidak lengkap

REVISI

![Image](https://github.com/user-attachments/assets/3711b673-e051-4eb9-b4ba-56c3e1166a1c)

saya revisi bagian fungsi progressbar dengan memberikan tambahan columns

