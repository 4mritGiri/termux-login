#!/usr/bin/bash 

bash banner.sh
echo

read -p $'\e[1;32m  Enter \033[33mUsername \033[37mfor \033[32mSignUp :\e[0m ' username                
read -p $'\e[1;32m  Enter \033[33mPassword \033[37mfor \033[32mSignUp :\e[0m ' password 
echo
echo
read -p $'\033[1m\033[32m   Your \033[0mNick \033[38;5;209mName \033[31m  : \033[33m\033[1m ' names
cd                                                   
cd ..                                               
cd usr/etc                                       
rm motd                                           
rm bash.bashrc                                       
cat <<LOGIN>bash.bashrc                            

trap '' 2                                          
echo -e "\e[1;32m
              ▄▀▀▀▄
            ──█───█───────────────
           \033[33mPlease Login To Continue\033[32m
	    ─███████─────────▄▀▀▄─
            ░██─▀─██░░█▀█▀▀▀▀█░░█░
            ░███▄███░░▀░▀░░░░░▀▀░░

\033[31m           ────────────────────────────
\033[33m           Login With Your \033[32mCredentials 
\033[31m           ────────────────────────────
\e[0m"
echo
termux-tts-speak Enter your Username.
read -p $'       \e[33m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mUSERNAME :\033[32m ' user
termux-tts-speak Enter your passwod.
read -s -p $'       \e[32m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mPASSWORD :\033[33m ' pass                                                
if [[ \$pass == $password && \$user == $username ]]; then
sleep 3
clear
cd $HOME
cd Termux-Login
cd Song
python sound_effect.py
clear
cd $HOME 
echo -e "\033[1m\033[33m

██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
███████║███████║██║     █████╔╝ █████╗  ██████╔╝
██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ 
"
echo -e  "     \e[1m\e[32m▂▃▄▅▆▇▓▒░ \033[1mCoded By \e[33m4mr!t-G!r! \e[1m\e[32m░▒▓▇▆▅▄▃▂"
cd /sdcard
python network.py
echo -e "   \033[1m\033[33m]\033[31m─────────────────────────────────────\033[33m["
echo 
PS1='\033[1m\[\e[32m\]\033[1m┌─[\[\e[37m\]\T\[\e[32m\]\033[1m]─────\033[1m\e[1;98m\[[\033[1m\033[37m$names\033[32m]\033[1m\e[0;32m\033[1m───[\033[38;5;209m\#\033[32m]\n|\n\033[1m\e[0;32m\033[1m└─[\[\e[32m\]\e[1;33m\W\[\e[1m\033[32m]\033[1m────►\e[1;93m\033[1m '
termux-tts-speak Login Succesfully.
termux-tts-speak Welcome $username.
<< comment
shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s compat31
shopt -s compat32
shopt -s compat40
shopt -s compat41
shopt -s no_empty_cmd_completion
shopt -s histverify
shopt -s histappend
shopt -s dirspell
shopt -s direxpand
shopt -s compat43
shopt -s compat32
shopt -s lithist
comment
cd $HOME
cd Termux-Login
cd
else
echo ""
echo -e "\e[1;31m  Your Password Is Incorrect ! <)
\e[0m"
sleep 1
cmatrix -L
fi
trap 2
LOGIN
echo 
echo
echo 
echo -e "\033[1m\e[1;32m     Your Termux is \033[33mReady \n
       So please \033[31mExit \033[37mand \033[32mLogin.\e[0m"
echo
echo

