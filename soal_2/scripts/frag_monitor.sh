LOG_DIR="$(dirname "$0")/../logs"
LOG_FILE="$LOG_DIR/fragment.log"

mkdir -p "$LOG_DIR"

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

RAM_USAGE=$(free -m | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_AVAILABLE=$(free -m | awk '/Mem:/ {print $7}')
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')

echo "[$TIMESTAMP] - Fragment Usage [$RAM_USAGE%] - Fragment Count [$RAM_USED MB] - Details [Total: $RAM_TOTAL MB, Available: $RAM_AVAILABLE MB]" >> "$LOG_FILE"
