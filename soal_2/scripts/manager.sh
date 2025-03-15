SCRIPT_DIR="$(dirname "$0")"

show_cpu_usage() {
    bash "$SCRIPT_DIR/core_monitor.sh"
}

show_ram_usage() {
    bash "$SCRIPT_DIR/frag_monitor.sh"
}

view_active_jobs() {
    crontab -l 2>/dev/null || echo "No active jobs."
}

add_cron_job() {
    local job_cmd=$1
    local schedule="*/3 * * * *"
    (crontab -l 2>/dev/null; echo "$schedule $job_cmd") | crontab -
    echo "Job telah ditambahkan ke crontab."
}

remove_cron_job() {
    local keyword=$1
    crontab -l | grep -v "$keyword" | crontab -
    echo "Job telah dihapus dari crontab."
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

while true; do
    show_menu

    case $OPTION in
        1) add_cron_job "bash $SCRIPT_DIR/core_monitor.sh" ;;
        2) add_cron_job "bash $SCRIPT_DIR/frag_monitor.sh" ;;
        3) remove_cron_job "core_monitor.sh" ;;
        4) remove_cron_job "frag_monitor.sh" ;;
        5) view_active_jobs ;;
        6) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac

    read -p "Press Enter to continue..."
done
