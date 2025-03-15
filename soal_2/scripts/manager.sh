CRON_FILE=cron_jobs.tmp
SCRIPTS_DIR="$(dirname "$0")"
CORE_MONITOR="$SCRIPTS_DIR/core_monitor.sh"
FRAG_MONITOR="$SCRIPTS_DIR/frag_monitor.sh"

check_escape() {
    read -n 1 -s key
    if [[ $key == $'\e' ]]; then
        echo -e "\nReturning to terminal..."
        sleep 1
        exec ./terminal.sh
    fi
}

show_menu() {
    clear
    echo "========================================================"
    echo "|                 CRONTAB MANAGER MENU                 |"
    echo "========================================================"
    echo "1) Add CPU Usage Monitor"
    echo "2) Add RAM Usage Monitor"
    echo "3) Remove CPU Usage Monitor"
    echo "4) Remove RAM Usage Monitor"
    echo "5) View Active Jobs"
    echo "6) Exit"
    echo "========================================================"
    read -p "Select an option: " OPTION
}

add_cron_job() {
    local SCRIPT_PATH=$1
    local JOB_DESC=$2
    crontab -l > "$CRON_FILE" 2>/dev/null
    if ! grep -Fxq "* * * * * bash $SCRIPT_PATH" "$CRON_FILE"; then
        echo "* * * * * bash $SCRIPT_PATH" >> "$CRON_FILE"
        crontab "$CRON_FILE"
        echo "$JOB_DESC added to crontab."
    else
        echo "$JOB_DESC is already scheduled."
    fi
    rm -f "$CRON_FILE"
}

remove_cron_job() {
    local SCRIPT_PATH=$1
    local JOB_DESC=$2
    crontab -l > "$CRON_FILE" 2>/dev/null
    grep -v "bash $SCRIPT_PATH" "$CRON_FILE" > crontab_tmp && mv crontab_tmp "$CRON_FILE"
    crontab "$CRON_FILE"
    echo "$JOB_DESC removed from crontab."
    rm -f "$CRON_FILE"
}

view_active_jobs() {
    echo "Active Cron Jobs:"
    crontab -l
}

while true; do
    show_menu
    case $OPTION in
        1) add_cron_job "$CORE_MONITOR" "CPU Monitor" ;;
        2) add_cron_job "$FRAG_MONITOR" "RAM Monitor" ;;
        3) remove_cron_job "$CORE_MONITOR" "CPU Monitor" ;;
        4) remove_cron_job "$FRAG_MONITOR" "RAM Monitor" ;;
        5) view_active_jobs ;;
        6) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Try again." ;;
    esac
    read -p "Press Enter to continue..."
done
