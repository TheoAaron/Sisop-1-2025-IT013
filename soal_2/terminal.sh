
show_menu() {
    clear

    WHITE='\033[1;37m'
    NC='\033[0m'

    echo -e "${WHITE}"
    echo "       .___________________________________________________."
    echo "       |  _______________________________________________  |"
    echo "       | |                                               | |"
    echo "       | |  Welcome Observer.                            | |"
    echo "       | |  What would you like to do today?             | |"
    echo "       | |                                               | |"
    echo "       | |  1. Register New Account                      | |"
    echo "       | |  2. Login to Existing Account                 | |"
    echo "       | |  3. Exit Arcaea Terminal                      | |"
    echo "       | |                                               | |"
    echo "       | |  =                                            | |"
    echo "       | |                                               | |"
    echo "       | |                                               | |"
    echo "       | |                                               | |"
    echo "       | |  ~ARCAEA TERMINAL                             | |"
    echo "       | |_______________________________________________| |"
    echo "       |___________________________________________________|"
    echo "      /                                                    \\"
    echo "     /  []  []  []                               []  []  [] \\"
    echo "    /________________________________________________________\\"
    echo "   /__________________________________________________________\\"
    echo "  /____________________________________________________________\\"
    echo " /______________________________________________________________\\"
    echo "/________________________________________________________________\\"
    echo "-------------------------------------------------------------------"
    echo -e "${NC}"
}

while true; do
    show_menu

    tput cup 10 14
    read -p "" option


    case $option in
        1)
            bash register.sh
            ;;
        2)
            bash login.sh
            ;;
        3)
	    tput cup 12 12
            echo "Thank you for visiting dear observer"
            tput cup 25 0
            exit 0
            ;;
        *)
            tput cup 12 12
            echo "Invalid option! Please enter 1, 2, or 3."
            tput cup 10 14
            sleep 2
            ;;
    esac
done
