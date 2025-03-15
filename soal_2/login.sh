DATA_FILE="data/player.csv"

check_escape_while_login() {
    read -n 1 -s key
    if [[ $key == $'\e' ]]; then
        echo -e "\nReturning to the main menu..."
        sleep 1
        exec $0
    fi
}

while true; do
    clear
    echo "===================================================="
    echo "|            LOGIN TO EXISTING ACCOUNT             |"
    echo "===================================================="
    echo "| 1) Login to Existing Email                       |"
    echo "| 2) Open Crontab Manager                          |"
    echo "| 3) Exit to Terminal                              |"
    echo "===================================================="
    echo "|      (Press ESC to go back to the terminal)      |"
    echo "===================================================="

    read -p "Select an option: " option

    case $option in
        1)
            break
            ;;
        2)
            bash scripts/manager.sh
            continue
            ;;
        3)
            echo "Exiting to terminal..."
            sleep 1
            exec ./terminal.sh
            ;;
        *)
            echo "Invalid option! Please enter 1, 2, or 3."
            sleep 2
            ;;
    esac
done

while true; do
    echo -n "Enter your email: "
    check_escape_while_login
    read EMAIL
    if [[ -n "$EMAIL" ]]; then
        break
    else
        echo "Error: Email cannot be empty!"
    fi
done

while true; do
    echo -n "Enter password: "
    check_escape_while_login
    read -s PASSWORD
    echo
    if [[ -n "$PASSWORD" ]]; then
        break
    else
        echo "Error: Password cannot be empty!"
    fi
done

HASHED_PASSWORD=$(echo -n "$PASSWORD" | sha256sum | awk '{print $1}')

if grep -q "^$EMAIL,.*,$HASHED_PASSWORD$" "$DATA_FILE"; then
    echo "Login successful! Welcome back, Player."
else
    echo "Error: Invalid email or password!"
fi

echo ""
read -p "Press Enter to return to the main menu..."
exec $0
