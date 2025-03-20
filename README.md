# Sisop-1-2025-IT013

# SOAL 1

Pada soal ini, terdapat sebuah file .csv yang harus kita analisis menggunakan awk. Terdapat 4 bagian dari soal ini.

Pertama-tama, saya membuat sebuah script yang sesuai dengan penamaan yaitu poppo_siroyo.sh dan mendownload fil .csv yang telah diberikan.

Pada bagian a, saya disuruh untuk menghitung berapa kali Chris Hemsworth membaca buku.
Untuk menghitung, saya membuat sebuah variabel bernama "chrisHems_count" dan menset value variabel tersebut menjadi 0.

Pada file .csv yang telah diberikan, nama orang yang membaca buku disimpan pada kolom kedua, sehingga dapat menggunakan kode sebagai berikut:

![image](https://github.com/user-attachments/assets/a49e4257-1711-4f64-963b-4eb9476c82e0)

Setelah itu, saya sisa mengeluarkan output yang sesuai dengan template yang telah diberikan.

Pada bagian b, saya disuruh untuk menghitung rata-rata durasi membaca dengan menggunakan tablet.
Untuk menghitung rata-rata nya, saya mengambil data dimana orang menggunakan tablet dan mengambil durasi tiap orang yang menggunakan tablet. Setelah mengambil kedua data tersebut, cara untuk menghitung rata-ratanya adalah dengan menambahkan semua durasi orang menggunakan tablet dan membaginya dengan jumlah orang menggunakan tablet. Jadi, saya membuat dua variable yang diset 0 valuenya dengan nama "total_durasi" untuk menghitung total durasi orang menggunakan tablet, dan "jumlah_tablet" untuk menghitung berapa banyak tablet yang digunakan.

Pada file .csv yang diberikan, total durasi berada pada kolom keenam dan jenis gadget yang digunakan berada pada kolom kedelapan, maka dapat menggunakan kode berikut ini:

![image](https://github.com/user-attachments/assets/b8ff5a23-e323-43f0-b2ef-b623e472ea4e)

Pada kode diatas, dapat dilihat jika kolom kedelapan adalah "tablet" maka akan dihitung durasinya, dan akan dikeluarkan outputnya berupa total durasi dibagi dengan jumlah orang yang menggunakan tablet.

Pada bagian c, saya disuruh untuk mencari pembaca dengan rating yang tertinggi.
Untuk mencari nilai maksimal dalam sebuah set data, dapat menggunakan sebuah algoritmma dimana saya membuat sebuah variabel untuk menyimpan value data

# SOAL 3

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

