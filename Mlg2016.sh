mkdir -p ~/.mlgtheme

# Kopia zapasowa aktualnego .bashrc
cp ~/.bashrc ~/.mlgtheme/backup.bashrc

# Tworzymy plik z MLG motywem
cat > ~/.mlgtheme/mlg.bashrc << 'EOM'
clear
for frame in ">" ">>" ">>>" ">>>>" ">>>>>" ">>>>>>" "NOSCOPE READY"; do
    echo -ne "\r\e[1;5;33mLoading $frame\e[0m"
    sleep 0.15
done
echo ""
sleep 0.3

echo -e "\e[1;35m
███████╗███╗   ███╗ ██████╗      ███╗   ███╗██╗     ██████╗ 
██╔════╝████╗ ████║██╔═══██╗     ████╗ ████║██║     ██╔══██╗
█████╗  ██╔████╔██║██║   ██║     ██╔████╔██║██║     ██║  ██║
██╔══╝  ██║╚██╔╝██║██║   ██║     ██║╚██╔╝██║██║     ██║  ██║
███████╗██║ ╚═╝ ██║╚██████╔╝     ██║ ╚═╝ ██║███████╗██████╔╝
╚══════╝╚═╝     ╚═╝ ╚═════╝      ╚═╝     ╚═╝╚══════╝╚═════╝ 
\e[0m"

echo -e "\e[1;36m███████╗\e[1;31m M L G   \e[1;33m N M G \e[1;32m 2 0 1 6 \e[0m"
echo -e "\e[1;5;33m420 NOSCOPE ACTIVATED - FAZE UP\e[0m"
echo ""

echo -e "\e[1;32m     (  )  (   ) )"
echo -e "      ) (   )  (  )"
echo -e "      ( )  (    ) )         \e[1;31mDORITOS"
echo -e "      _____________         \e[1;31m  /\\_/\\"
echo -e "     <_____________> ___    \e[1;31m ( o.o )"
echo -e "     |             |/ _ \\   \e[1;31m  > ^ <"
echo -e "     |               | | |"
echo -e "     |               |_| |     \e[1;32mMOUNTAIN DEW"
echo -e "  ___|             |\\___/"
echo -e " /    \\___________/    \\"
echo -e " \\_____________________/"
echo ""

echo -e "\e[1;5;35m[+] SYSTEM READY FOR 360 NOSCOPE [+]\e[0m"
echo -e "\e[1;36mAuthor: TikTok: ApkModerZNJ\e[0m"
echo ""

PS1="\e[1;35m[MLG 2016] > \e[0m"
EOM

# Dodajemy komendy do ~/.bashrc
cat > ~/.bashrc << 'EOF'
# === CUSTOM MLG COMMANDS ===

mlgHelp() {
    echo -e "\e[1;32m===== MLG COMMANDS =====\e[0m"
    echo -e "\e[1;33mlgStart\e[0m  - Włącza MLG 2016 Theme"
    echo -e "\e[1;33m2016End\e[0m   - Przywraca oryginalny wygląd"
    echo -e "\e[1;33mlgHelp\e[0m    - Pokazuje to menu"
    echo -e "\e[1;32m=========================\e[0m"
}

mlgStart() {
    cp ~/.mlgtheme/mlg.bashrc ~/.bashrc
    echo -e "\e[1;32m[+] MLG THEME WŁĄCZONY [+]\e[0m"
    exec bash
}

2016End() {
    cp ~/.mlgtheme/backup.bashrc ~/.bashrc
    echo -e "\e[1;31m[-] MLG THEME WYŁĄCZONY [-]\e[0m"
    exec bash
}

mlgHelp

# Prompt podstawowy
PS1="\e[0;32m[normalny shell] > \e[0m"
EOF

# Reload bashrc to activate help instantly
source ~/.bashrc
