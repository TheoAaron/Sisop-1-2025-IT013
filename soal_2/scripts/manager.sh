mkdir -p ~/soal_2/logs

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

case $OPTION in
    1)
        (crontab -l 2>/dev/null; echo "*/3 * * * * bash ~/soal_2/scripts/core_monitor.sh >> ~/soal_2/logs/core.log 2>&1") | crontab -
        echo "CPU usage monitor added."
        ;;
    2)
        (crontab -l 2>/dev/null; echo "*/3 * * * * bash ~/soal_2/scripts/frag_monitor.sh >> ~/soal_2/logs/fragment.log 2>&1") | crontab -
        echo "RAM usage monitor added."
        ;;
    3)
        crontab -l | grep -v "core_monitor.sh" | crontab -
        echo "CPU usage monitor removed."
        ;;
    4)
        crontab -l | grep -v "frag_monitor.sh" | crontab -
        echo "RAM usage monitor removed."
        ;;
    5)
        crontab -l
        ;;
    6)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option."
        ;;
esac
