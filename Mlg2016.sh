# Backup obecnego bashrc
cp ~/.bashrc ~/.bashrc_backup

# Nowy pełny MLG bashrc z komendami
cat > ~/.bashrc << 'EOF'
clear

# Animacja NOSCOPE
for frame in ">" ">>" ">>>" ">>>>" ">>>>>" ">>>>>>" "NOSCOPE READY"; do
    echo -ne "\r\e[1;5;33mLoading $frame\e[0m"
    sleep 0.15
done
echo ""
sleep 0.3

# ASCII Banner
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

# ASCII DORITOS + DEW
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
echo -e "\e[1;36mTikTok: ApkModerZNJ\e[0m"
echo ""

# Custom komenda: mlgHelp
mlgHelp() {
  echo -e "\e[1;32mAvailable commands:\e[0m"
  echo -e "\e[1;33mlgHelp\e[0m   - Show this help menu"
  echo -e "\e[1;33m2016End\e[0m  - Disable MLG theme and restore default"
}

# Komenda: 2016End
2016End() {
  if [ -f ~/.bashrc_backup ]; then
    cp ~/.bashrc_backup ~/.bashrc
    echo -e "\e[1;31m[-] MLG THEME DISABLED. Restart shell.\e[0m"
  else
    echo -e "\e[1;31mNo backup found. Cannot restore.\e[0m"
  fi
}

# Custom prompt
PS1="\e[1;35m[MLG 2016] > \e[0m"
EOF

# Reload
source ~/.bashrc
