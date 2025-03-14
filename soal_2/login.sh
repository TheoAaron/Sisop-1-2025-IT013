DATA_FILE="data/player.csv"

check_escape() {
    read -n 1 -s key
    if [[ $key == $'\e' ]]; then
        echo -e "\n..."
        echo -e "Returning to terminal..."
        sleep 1
        exec ./terminal.sh
    fi
}

clear
echo "===================================================="
echo "|            LOGIN TO EXISTING ACCOUNT             |"
echo "===================================================="
echo "(Press ESC to go back to the terminal)"

while true; do
    echo -n "Enter your email: "
    check_escape
    read EMAIL
    if [[ -n "$EMAIL" ]]; then
        break
    else
        echo "Error: Email cannot be empty!"
    fi
done

while true; do
    echo -n "Enter password: "
    check_escape
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
read -p "Press Enter to return to the terminal..."
exec ./terminal.sh
