#!/usr/bin/bash
clear
echo
echo
echo
echo

pkg install pv -y >/dev/null 2>&1
echo -e "\033[32m\033[1m]────────────────────────────────────────────["
echo -e "\033[33m\033[1m   WE ARE WORKING ON IT PLZ BE PATIENCE FOR IT" | pv -qL 10
sleep 1.0
#setup motd
echo > motd
echo 'Welcome to Termux!' >> motd
echo >> motd
echo 'Wiki:            https://wiki.termux.com' >> motd
echo 'Community forum: https://termux.com/community' >> motd
echo 'Gitter chat:     https://gitter.im/termux/termux' >> motd
echo "IRC channel:     #termux on freenode" >> motd
echo >> motd
echo 'Working with packages:' >> motd
echo >> motd
echo '* Search packages:   pkg search <query>' >> motd
echo '* Install a package: pkg install <package>' >>  motd
echo '* Upgrade packages:  pkg upgrade' >> motd
echo >> motd
echo 'Subscribing to additional repositories:' >> motd
echo >> motd
echo '* Root: pkg install root-repo' >> motd
echo '* Unstable: pkg install unstable-repo' >> motd
echo '* X11:      pkg install x11-repo' >> motd
echo >> motd
echo 'Report issues at https://termux.com/issues' >> motd
echo >> motd

#default bash.bashrc
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then' > bash.bashrc
echo '        command_not_found_handle() {' >> bash.bashrc
echo '                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"' >> bash.bashrc
echo '        }' >> bash.bashrc
echo 'fi' >> bash.bashrc
echo >> bash.bashrc
echo "PS1='\$ '" >> bash.bashrc
ls
sleep 2
echo
mv bash.bashrc /data/data/com.termux/files/usr/etc

cd $HOME
echo
rm -rf termux-login
echo
sleep 0.5
clear
echo -e "\033[33m\033[1m Deleting Succesfully " | pv -qL 10
