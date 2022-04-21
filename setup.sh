
#!/bin/bash 
clear
echo
pkg install pv -y >/dev/null 2>&1
echo -e "\033[32m\033[1m]────────────────────────────────────────────["
echo -e "\033[33m\033[1m   Installing Packages and All Dependencies" | pv -qL 10
apt update && apt upgrade -y 
pkg install python -y 
pkg install cmatrix -y 
pkg install pv -y 
apt install bash
apt install figlet -y  
apt install ruby -y 
apt install mpv -y 
pip install lolcat 
pip install random 
pip install requests 
pkg install python2 -y 
pkg install termux-api -y 
echo -e "\033[31m\033[1m        INSTALLED SUCCESSFULLY \033[32m[\033[36m✓\033[32m]" | pv -qL 12
echo -e "\033[33m\033[1m]────────────────────────────────────────────["
termux-setup-storage
cd $HOME 
cd termux-login
cp login.sh $PREFIX/etc
cd $HOME
cd termux-login 
chmod +x login.sh delete.sh setup.sh sound_effect.py banner.sh 
mkdir Song 
mv Access-Granted.mp3 Jarvis2.mp3 JARVIS.mp3 sound_effect.py Song
rm 1
rm README.md
mv network.py /sdcard

cd $HOME 
cd termux-login 

bash login.sh
