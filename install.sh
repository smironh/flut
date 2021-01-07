clear
echo "введите куда устанавливаете"
echo "1:unix"
echo "2:termux"
read numb
if {$numb}
    then
        pkg install python
        pkg install dos2unix
        pip install requests colorama proxyscrape
        cp ~/bomb/setup.py $PREFIX/bin/flut
        dos2unix $PREFIX/bin/flut
        chmod -R 777 ~/flut
        chmod 777 $PREFIX/bin/flut
        flut

        else
if [ $numb = "2" ]
then
	if [ "$(whoami)" != 'root' ];
	then
		echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/flut/install.sh)"
		exit
	else
		apt install python3 python3-pip dos2unix
		pip3 install requests colorama proxyscrape
		cp ~/flut/spammer.py $PREFIX/bin/flut
		dos2unix $RPEFIX/bin/flut
		chmod 777 $RPEFIX/bin/flut
		chmod -R 777 ~/flut
		flut
	fi