#!/usr/bin/bash

GREEN='\033[1;32m'
RED='\033[1;31m'
WHITE='\033[1;37m'

root_check() {
    if [[ "$EUID" -ne 0 ]]; then
        echo -e "${WHITE}[${RED}!!${WHITE}] ${RED}Please run as root"
        exit 1
    fi
}

if [[ -d /usr/bin ]]; then
    root_check
    install_path="/usr/bin"
else
    install_path="/data/data/com.termux/files/usr/bin"
fi

mv insta-breaker "$install_path/"
chmod +x "${install_path}/insta-breaker"

pip install inpass==2.0.0

if command -v inpass &> /dev/null; then
    echo -e "${WHITE}[${GREEN}++${WHITE}] ${GREEN}inpass installation complete"
else
    echo -e "${WHITE}[${RED}++${WHITE}] ${RED}inpass installation failed"
fi

if command -v insta-breaker &> /dev/null; then
    echo -e "${WHITE}[${GREEN}++${WHITE}] ${GREEN}insta-breaker installation complete"
else
    echo -e "${WHITE}[${RED}++${WHITE}] ${RED}insta-breaker installation failed"
fi
