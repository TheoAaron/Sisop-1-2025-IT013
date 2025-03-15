DATA_FILE="data/player.csv"

mkdir -p data
touch "$DATA_FILE"

validate_email() {
    [[ "$1" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
}

validate_password() {
    [[ "$1" =~ [A-Z] ]] && [[ "$1" =~ [a-z] ]] && [[ "$1" =~ [0-9] ]] && [[ ${#1} -ge 8 ]]
}

check_escape() {
    read -n 1 -s key
    if [[ $key == $'\e' ]]; then
        echo -e "\nReturning to terminal..."
        sleep 1
        exec ./terminal.sh
    fi
}

clear
echo "======================================================"
echo "|            REGISTER NEW PLAYER ACCOUNT             |"
echo "======================================================"
echo "|       (Press ESC to go back to the terminal)       |"
echo "======================================================"

while true; do
    echo -n "Enter your email: "
    check_escape
    read EMAIL
    if grep -q "^$EMAIL," "$DATA_FILE"; then
        echo "Error: Email already registered!"
    elif validate_email "$EMAIL"; then
        break 
    else
        echo "Error: Invalid email format!"
    fi
done

echo -n "Enter your username: "
check_escape
read USERNAME

while true; do
    echo -n "Enter password: "
    check_escape
    read -s PASSWORD
    echo
    if validate_password "$PASSWORD"; then
        echo "Password meets all requirements."
        break
    else
        echo "Error: Password must be at least 8 characters long, contain one uppercase letter, one lowercase, and one number."
    fi
done

echo "$EMAIL,$USERNAME,$(echo -n "$PASSWORD" | sha256sum | awk '{print $1}')" >> "$DATA_FILE"

echo "Registration successful!"
echo ""
read -p "Press Enter to return to the terminal..."
exec ./terminal.sh
