#!/bin/bash

# Jika hanya --help diberikan tanpa file CSV
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

# Jika jumlah argumen kurang dari 2
if [[ $# -lt 2 ]]; then
    echo "Error: Missing arguments!"
    echo "Use ./pokemon_analysis.sh --help"
    exit 1
fi

FILE="$1"
COMMAND="$2"

# Cek apakah file ada
if [[ ! -f "$FILE" ]]; then
    echo "Error: File not found!"
    exit 1
fi

# Fungsi untuk menampilkan summary data
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

# Fungsi untuk sorting berdasarkan kolom
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

# Fungsi untuk mencari Pokémon berdasarkan nama
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

# Fungsi untuk mencari Pokémon berdasarkan tipe
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

# Fungsi untuk menghitung rata-rata statistik Pokémon
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

# Fungsi untuk menampilkan 10 Pokémon dengan Usage% tertinggi
top10_pokemon() {
    HEADER=$(head -n 1 "$FILE")
    echo "$HEADER"
    tail -n +2 "$FILE" | sort -t, -k2 -nr | head -n 10
}

# Switch case untuk mengeksekusi command yang diberikan
case "$COMMAND" in
    --info) info_summary ;;
    --sort) sort_data "$@" ;;
    --grep) grep_pokemon "$@" ;;
    --filter) filter_type "$@" ;;
    --avg) average_stats ;;
    --top10) top10_pokemon ;;
    *)
        echo "Error: Unknown command '$COMMAND'!"
        echo "Use ./pokemon_analysis.sh --help"
        exit 1
        ;;
esac
