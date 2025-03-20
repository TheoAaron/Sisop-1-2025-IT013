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
Untuk mencari nilai maksimal dalam sebuah set data, dapat menggunakan sebuah algoritma dimana saya membuat sebuah variabel kosong untuk menyimpan value data lalu dibandingkan dengan semua value rating yang ada, jika lebih besar, maka menggantikan value sebelumnya.

Berikut merupakan kode yang telah saya buat:

![image](https://github.com/user-attachments/assets/8ed05a8f-8df1-46dd-91f3-fb043a3036d8)

Fungsi +0 pada kode diatas adalah untuk mengubah nilai yang diambil dari data agar dianggap menjadi integer.

Pada bagian d, saya disuruh untuk mencari genre terbaik di region Asia setelah tahun 2023. Pertama, saya mencari dulu region Asia di komlom region, jika sudah dapat regionnya, maka saya akan mengecek tahunnya dengan cara memisahkan tahun, tanggal, dan bulan dari data dengan menggunakan fungsi split(), lalu saya akan mengecek apakah tahun tersebut lebih dari 2023, kalau iya, maka saya akan mengambil genre buku tersebut, jika tidak, maka tidak akan mengambil genre buku tersebut. Lalu saya akan mencari genre terbaik (terbanyak) dengan menggunakan algoritam yang sama degna sebelumnya, dengan cara membuat dua variabel string kosong, lalu menyimpan genre dari data dan menghitung jumlah tiap genre, ketika ada genre yang melebihi jumlah genre yang sedan diproses, maka akan menggantikan genre yang sedang diproses.

Berikut adalah kode bagian d ini:

![image](https://github.com/user-attachments/assets/ac2756c3-5908-4926-81c7-5c3d28c670ff)

Pada kode tersebut, saya membuat string kosong diawal, lalu mencari region asia, lalu mencari genre terbaik di bagian END nya.

# SOAL 2

Pada soal ini, terdapat 9 bagian, namun saya hanya akan menjelaskan mengenai function diluar menu (file terminal.sh dan manager.sh).

Pada bagian a, saya membuat sebuah program bernama register.sh dan login.sh, register.sh berfungsi untuk mendaftarkan email baru player dan dimasukkan ke dalam file bernama player.csv di folder "data". Login.sh berfungsi untuk media user yang ingin masuk ke dalam akun yang telah dibuat. Jadi, saya membuat sebuah menu simpel untuk menanyakan email, username, dan password di register.sh seperti berikut ini:

![image](https://github.com/user-attachments/assets/ac6646e1-0e10-4241-ab8d-b8d05733e3d5)

Note: function check escape hanyalah fitur.

Setelah itu, saya membuat sebuah menu untuk login.sh yang berisikan kode untuk meminta email dan password dari user seperti berikut ini:

![image](https://github.com/user-attachments/assets/a6f1fb69-dea4-4f6f-a5e3-31cb5800e1de)

Note: read -s berfungsi untuk menghilangkan simbol yang diketik oleh user sehingga password tidak dapat dilihat sambil diketik.

Pada bagian b, dinyatakan bahwa setiap email dan password yang diberikan oleh user harus melewati sistem validasi, email yang diberikan harus memiliki format xxxx@xx.xxx, yaitu memiliki tanda @ dan tanda . sesuai dengan format tersebut. Sedangkan password harus memiliki minimal 8 karakter, setidakny satu huruf kecil, satu huruf besar, dan satu angka.

Maka saya membuat sebuah program dimana user harus memberikan input sesuai dengan format yang ada. Berikut merupakan kodenya:

![image](https://github.com/user-attachments/assets/2cd46671-f0f8-465c-96d7-86e322c157e3)

Pada kode tersebut terdapat dua function, yaitu validate_email() dan validate_password(). Function validate_email berisi sebuah line dimana inputyang diberikan user harus sesuai dengan format yaitu xxxx.@xx.xx dan function validate_password() berisi sebuah line dimana user harus memberikan input sebuah huruf besar (A-Z) DAN sebuah huruf kecil (a-z) DAN sebuah angka (0-9) DAN panjang string password adalah 8.

Pada bagian c, saya membuat sebuah program dimana user tidak bisa meregeister sebuah email yang sama berulang kali. Jadi saya membuat kode dimana ketika user ingin membuat sebuah akun baru, maka saya akan mengecek kembali ke dalam data yang sudah disimpan dalam file player.csv dan mengecek apakah email sudah ada atau belum. Berikut merupakan kodenya:

![image](https://github.com/user-attachments/assets/6ae15478-11d5-4723-b522-68f7e02016d0)

Pada kode tersebut, saya mengambil input user dan mengecek dalam player.csv apakah email yang sudah dipakai atau tidak.

Pada bagian d, password yang telah diberikan user harus disimpan dalam bentuk yang tidak mudah diretas. Oleh karena itu, saya membuat sebuah program dimana passowrd yang telah diberikan oleh sebuah user, akan saya hashing sha256sum. Berikut merupakan kodenya:

![image](https://github.com/user-attachments/assets/a5b8442f-80ad-405d-8c8f-72cd16922153)

Pada kode tersebut, sebelum saya masukkan password ke dalam player.csv, saya hash terlebih dahulu sebelum menyimpan datanya.

Pada bagian e, saya membuat sebuah program untuk memperlihatkan performa CPU user dan menyimpannya ke dalam file bernama core_monitor.sh. Berikut merupakan kodenya:

![image](https://github.com/user-attachments/assets/dcc9caee-b0d7-4ecf-8a37-472645ebb273)

Dalam penggunaan CPU, terdapat 2 faktor yang mempengaruhi CPU usage, yaitu user usage dan system usage (ditandai dengan $2 dan $4). Maka, kedua usage tersebut harus ditambah untuk memperlihatkan CPU usage dari user secara keseluruhan, CPU model juga diambil langsung dari device user dengan menggunakan function cpuinfo(). 

Pada bagian f, saya membuat sebuah program untuk memperlihatkan performa RAM user dan menyimpannya ke dalam file bernama frag_monitor.sh. Berikut merupakan kodenya:

![image](https://github.com/user-attachments/assets/3e18f04e-0404-4bed-85db-b84e3c26dcb5)

Pada kode tersebut, saya menggunakan function free -m untuk menampilkan informasi RAM dalam bentuk MB, lalu saya memakai rumus untuk menghitung persentase RAM yang terpakai, yaitu RAM yang terpakai dibagi dengan total RAM yang ada pada komputer user. $3 melambangkan RAM yang terpakai, sedangkan $2 melambangkan total RAM yang ada di komputer user. Saya juga mmeperlihatkan sisa RAM dalam komputer user yang dilmambangkan dengan $7.

Pada bagian g, saya membuat sebuah crontab manager untuk mengatur jadwal pemantauan sistem. Pada menu ini, terdapat beberapa opsi, yaitu memperlihatkan usage CPU, memperlihatkan usage RAM, menghapus penggunaan usage CPU, menghapus penggunaan usage RAM, dan memperlihatkan seluruh kegiatan pemantauan sistem yang dijadwalkan. Berikut adalah kodenya:

![image](https://github.com/user-attachments/assets/ba1da5a4-97d6-49ff-9e28-290a8bbbd3f1)

Pada kode tersebut, saya membuat sebuah case simpel dimana akan menjadwalkan pemantauan sistem selama 3 menit sekali, baik RAM maupun CPU. Lalu jika user ingin menghapus pemantauan sistem, saya akan menghapus tampilan dan menghentikan program untuk memperlihatkan usage CPU dan RAM. Lalu, untuk memperlihatkan seluruh kegiatan yang sedang berlangsung, saya menggunakan function crontab -l.

Pada bagian h, saya membuat sebuah direktori dimana semua file log pemantauan sistem akan disimpan. Direktori itu bernama logs dan berisikan dua file masing-masing bernama core.log untuk mneyimpan pemantauan CPU, dan fragment.log. Adapun format yang sudah diberikan pada output yang akan ditampilkan pada masing-masing log, yaitu sebagai berikut:

![image](https://github.com/user-attachments/assets/0ea1292d-7a56-411d-b56f-bb4232dd15c1)

Berikut merupakan kode yang akan dimasukkan ke dalam file core_monitor.sh dan frag_monitor.sh:

![image](https://github.com/user-attachments/assets/7eec2c37-4c26-41ce-8d56-ce1be45ee288)

Pada kode tersebut, saya membuat sebuah direktori baru pada lokasi yang disuruh, yaitu diluar direktori script dan bersama file terminal.sh dan direktori data player.

Pada bagian i, saya membuat main menu bernama terminal.sh untuk mengatur segala program yang telah saya buat sebelumnya. Dalam main menu ini, berisikan opsi agar user dapat menuju menu Register, menu Login, dan menu Crontab manager yang ada dalam menu login.

Berikut merupakan kodenya:

![image](https://github.com/user-attachments/assets/d43a40f8-fdcb-44bc-aa97-bcf5de1e3901)

Pada kode tersebut, saya membuat sebuah case dimana opsi 1 akan menuju menu register, opsi 2 akan menuju menu login, opsi 3 akan keluar dari program, dan sisanya akan dinyatakan input yang invalid.

Note: tput cup hanyalah untuk desain menu nya, function tersebut untuk menaruh kursor user.

KENDALA:
1. Pada menu crontab, dilupakan untuk memberi function clear sebelum membuka menunya, sehingga menu crontab bertabrakan dengan menu login yang menyebabkan error yang fatal.

Solusi:
2. Menambahkan function clear atau while(true) sebelum menampilkan menu crontab.

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

# SOAL4
Pada soal no 4 Modul 1 Sisop, soal memberikan tugas untuk membuat sebuah file yg berisi analisis tentang pokemon. Pertama-tama, saya mendownload file yg sudah diberikan oleh author Amoes untuk data-data pokemon yg akan dianalisis dgn format file pokemon_usage.csv
Kemudian saya beralih ke terminal dan membuat folder baru dengan nama pokemon_analisis dan file baru dengan nama pokemon_analysis.sh

  ```
  mkdir pokemon_analisis
  cd pokemon_analisis
  touch pokemon_analysis.sh
  gedit pokemon_analysis.sh
  ```
Kemudian setelah itu, saya mengikuti instruksi soal untuk membuat program dari file yg ada agar menampilkan nama pokemon dengan Usage% dan RawUsage paling tinggi

  ```
  info_summary() {
    HEADER=$(head -n 1 "$FILE")
    HIGHEST_USAGE=$(tail -n +2 "$FILE" | sort -t, -k2 -nr | head -n 1)
    HIGHEST_RAW=$(tail -n +2 "$FILE" | sort -t, -k3 -nr | head -n 1)

    HIGHEST_USAGE_NAME=$(echo "$HIGHEST_USAGE" | cut -d, -f1)
    HIGHEST_USAGE_PERCENT=$(echo "$HIGHEST_USAGE" | cut -d, -f2)

    HIGHEST_RAW_NAME=$(echo "$HIGHEST_RAW" | cut -d, -f1)
    HIGHEST_RAW_COUNT=$(echo "$HIGHEST_RAW" | cut -d, -f3)

    echo "Summary of $FILE"
    echo "Highest Adjusted Usage:  $HIGHEST_USAGE_NAME with $HIGHEST_USAGE_PERCENT%"
    echo "Highest Raw Usage:       $HIGHEST_RAW_NAME with $HIGHEST_RAW_COUNT uses"
  }

  ```
Kemudian berlanjut kepada poin berikutnya, kita akan menambahkan program agar dapat program dapat menggunakan fitur sort dengan ketentuan descending untuk semua angka selain nama, yang diurutkan secara alphabetical sehingga kita akan semakin mudah untuk menyortir data-data pokemon berdasarkan spesifikasi tertentunya

  ```
  sort_data() {
    if [[ -z "$3" ]]; then
        echo "Error: Missing column name for sorting!"
        echo "Usage: ./pokemon_analysis.sh <file.csv> --sort <column>"
        exit 1
    fi

    COLUMN="$3"
    HEADER=$(head -n 1 "$FILE")

    case "$COLUMN" in
        usage)  COL=2 ;;
        raw)    COL=3 ;;
        name)   COL=1 ;;
        hp)     COL=6 ;;
        atk)    COL=7 ;;
        def)    COL=8 ;;
        spatk)  COL=9 ;;
        spdef)  COL=10 ;;
        speed)  COL=11 ;;
        *)
            echo "Error: Invalid column name '$COLUMN'!"
            exit 1
            ;;
    esac

    echo "$HEADER"
    
    if [[ "$COLUMN" == "name" ]]; then
        tail -n +2 "$FILE" | sort -t, -k"$COL"
    else
        tail -n +2 "$FILE" | sort -t, -k"$COL" -nr
    fi
  }
  ```
Selanjutnya, kita akan menambahkan fitur baru dalam program dimana akan terdapat sebuah fitur untuk mencari nama pokemon yang ingin kita cari, seperti Rotom, Mew, dan lain sebagainya

  ```
  grep_pokemon() {
    if [[ -z "$3" ]]; then
        echo "Error: Missing Pokémon name!"
        echo "Usage: ./pokemon_analysis.sh <file.csv> --grep <name>"
        exit 1
    fi

    HEADER=$(head -n 1 "$FILE")
    RESULT=$(tail -n +2 "$FILE" | grep -i "$3")

    if [[ -z "$RESULT" ]]; then
        echo "Error: Pokémon '$3' tidak ditemukan!"
    else
        echo "$HEADER"
        echo "$RESULT"
    fi
  }
  ```
Sebagai manusia kita tidak luput dari kesalahan berupa human error, sehingga kami menambahkan fitur help untuk menampilkan list bantuan command jika ada kesalahan dalam penulisan command

  ```
  if [[ "$1" == "--help" ]]; then
    cat << "EOF"
       _        _        _        _        _        _    
     _( )__   _( )__   _( )__   _( )__   _( )__   _( )__ 
   _|     _|_|     _|_|     _|_|     _|_|     _|_|     _|
  (_ S _ (_(_ A _ (_(_ L _ (_(_ O _ (_(_ M _ (_(_ O _ (_ 
    |_( )__| |_( )__| |_( )__| |_( )__| |_( )__| |_( )__|
                                              
  Pokemon Analysis Tool

  Usage:
  ./pokemon_analysis.sh <file.csv> <command> [options]

  Commands:
  --info       		: Menampilkan summary dari data
  --sort <col> 		: Mengurutkan berdasarkan kolom (usage, raw, hp, atk, etc.)
  --grep <name>		: Mencari Pokemon berdasarkan nama
  --filter <type>	: Mencari Pokemon berdasarkan Type
  --avg        		: Menampilkan rata-rata statistik semua Pokemon
  --top10      		: Menampilkan 10 Pokemon dengan Usage% tertinggi
  --help       	 	: Menampilkan halaman bantuan ini

  Example:
  ./pokemon_analysis.sh pokemon_usage.csv --sort hp
  ./pokemon_analysis.sh pokemon_usage.csv --grep pikachu
  ./pokemon_analysis.sh pokemon_usage.csv --filter electric
  EOF
    exit 0
  fi
  ```
Dan juga untuk error handling dimana jika ada command yg tidak lengkap atau salah menuliskan command tersebut

  ```
  if [[ $# -lt 2 ]]; then
    echo "Error: Missing arguments!"
    echo "Use ./pokemon_analysis.sh --help"
    exit 1
  fi
  ```
Dan juga untuk beberapa fitur tambahan, kami menambahkan 2 fitur tambahan untuk mempermudah proses pencarian yaitu dengan menggunakan filter dalam type2 pokemon yang ada dan juga memberikan bantuan kepada player baru untuk melihat top 10 pokemon yang ada dalam data author Amoes, serta menambahkan rata-rata untuk statistik data-data pokemon tersebut

  Filter Type
  
  ```
  filter_type() {
    if [[ -z "$3" ]]; then
        echo "Error: Missing Pokémon type!"
        echo "Usage: ./pokemon_analysis.sh <file.csv> --filter <type>"
        exit 1
    fi

    HEADER=$(head -n 1 "$FILE")
    RESULT=$(tail -n +2 "$FILE" | awk -F, -v type="$(echo "$3" | tr '[:upper:]' '[:lower:]')" '{
        type1 = tolower($4);
        type2 = tolower($5);
        if (type1 == type || type2 == type) print $0;
    }')

    if [[ -z "$RESULT" ]]; then
        echo "Error: Tidak ada Pokémon dengan type '$3'!"
    else
        echo "$HEADER"
        echo "$RESULT"
    fi
  }
  ```

  Top10 Search
  
  ```
  top10_pokemon() {
    HEADER=$(head -n 1 "$FILE")
    echo "$HEADER"
    tail -n +2 "$FILE" | sort -t, -k2 -nr | head -n 10
  }
  ```

  Average Statistic
  
  ```
  average_stats() {
    HEADER="Pokemon,Usage%,RawUsage,Type1,Type2,HP,Atk,Def,SpAtk,SpDef,Speed"
    AVG_HP=$(awk -F, 'NR>1 {sum+=$6; count++} END {print sum/count}' "$FILE")
    AVG_ATK=$(awk -F, 'NR>1 {sum+=$7; count++} END {print sum/count}' "$FILE")
    AVG_DEF=$(awk -F, 'NR>1 {sum+=$8; count++} END {print sum/count}' "$FILE")
    AVG_SPATK=$(awk -F, 'NR>1 {sum+=$9; count++} END {print sum/count}' "$FILE")
    AVG_SPDEF=$(awk -F, 'NR>1 {sum+=$10; count++} END {print sum/count}' "$FILE")
    AVG_SPEED=$(awk -F, 'NR>1 {sum+=$11; count++} END {print sum/count}' "$FILE")

    echo "$HEADER"
    echo "Average, N/A, N/A, N/A, N/A, $AVG_HP , $AVG_ATK , $AVG_DEF , $AVG_SPATK , $AVG_SPDEF , $AVG_SPEED"
  }
  ```

**REVISI**
Pada demo praktikum modul 1 kemarin, program saya masih memiliki kekurangan dalam fitur sortnya dimana ketika mencoba sort elemen lain seperti hp, atk, dll, masih memberikan output yg sama dan tidak berubah. Berikut adalah perbaikan dan dokumentasinya:

  ```
  sort_data() {
    if [[ -z "$3" ]]; then
        echo "Error: Missing column name for sorting!"
        echo "Usage: ./pokemon_analysis.sh <file.csv> --sort <column>"
        exit 1
    fi

    COLUMN="$3"
    HEADER=$(head -n 1 "$FILE")

    case "$COLUMN" in
        usage)  COL=2 ;;
        raw)    COL=3 ;;
        name)   COL=1 ;;
        hp)     COL=6 ;;
        atk)    COL=7 ;;
        def)    COL=8 ;;
        spatk)  COL=9 ;;
        spdef)  COL=10 ;;
        speed)  COL=11 ;;
        *)
            echo "Error: Invalid column name '$COLUMN'!"
            exit 1
            ;;
    esac

    echo "$HEADER"
    
    if [[ "$COLUMN" == "name" ]]; then
        tail -n +2 "$FILE" | sort -t, -k"$COL"
    else
        tail -n +2 "$FILE" | sort -t, -k"$COL" -nr
    fi
  }
  ```

Berikut adalah dokumentasi perbaikan, dimana ketika kita mencoba fitur --sort name , maka nama-nama pokemon akan diurutkan secara alphabetic
![Image](https://github.com/user-attachments/assets/5e9baa70-9e7a-4aa3-a921-1f07989e06ae)


Berikut adalah dokumentasi untuk fitur --sort hp, maka akan menampilkan 3 pokemon dengan nyaw tertinggi yaitu Mew, Manaphy, dan Jirachi
![image](https://github.com/user-attachments/assets/31230a9b-a041-450b-b4ff-08468e1960b2)


