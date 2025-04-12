cat > ~/.bashrc << 'EOF'
clear

# Animacja noscope loading
for frame in ">" ">>" ">>>" ">>>>" ">>>>>" ">>>>>>" "NOSCOPE READY"; do
    echo -ne "\r\e[1;5;33mLoading $frame\e[0m"
    sleep 0.15
done
echo ""
sleep 0.3

# ASCII BANNER
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

# ASCII ART
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

# MLG Prompt
PS1="\e[1;35m[MLG 2016] > \e[0m"
EOF

# Apply changes
source ~/.bashrc
