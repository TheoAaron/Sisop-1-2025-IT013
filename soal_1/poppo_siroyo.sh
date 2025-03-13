BEGIN {
    FS = ","
    chrisHems_count = 0
    total_durasi = 0
    jumlah_tablet = 0
    max_rating = 0
    pembaca_terbaik = ""
    judul_terbaik = ""
    split("2023-12-31", batas_tanggal, "-")
}

$2 == "Chris Hemsworth" { chrisHems_count++ }

$8 == "Tablet" {
    total_durasi += $6
    jumlah_tablet++
}

$7+0 > max_rating {
    max_rating = $7+0
    pembaca_terbaik = $2
    judul_terbaik = $3
}

$9 == "Asia" {
    split($5, tahun_setelah, "-")
    if (tahun_setelah[1] > batas_tanggal[1] || 
        (tahun_setelah[1] == batas_tanggal[1] && tahun_setelah[2] > batas_tanggal[2]) ||
        (tahun_setelah[1] == batas_tanggal[1] && tahun_setelah[2] == batas_tanggal[2] && tahun_setelah[3] > batas_tanggal[3])) {
        genre_terbaik[$4]++
    }
}

END {
    print "Chris Hemsworth membaca " chrisHems_count " buku."
    print "Rata-rata durasi membaca dengan tablet adalah " total_durasi / jumlah_tablet " menit."
    print "Pembaca dengan rating tertinggi: " pembaca_terbaik " - " judul_terbaik " - " max_rating

    genre_max = ""
    genre_max_count = 0
    for (i in genre_terbaik) {
        if (genre_terbaik[i] > genre_max_count) {
            genre_max_count = genre_terbaik[i]
            genre_max = i
        }
    }

    print "Genre paling populer di Asia setelah 2023 adalah " genre_max " dengan " genre_max_count " buku."
}
