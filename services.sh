#!/bin/bash
clear
echo "Verificando serviços ativos"
sleep 1
date "+%c"
for srv in /etc/init.d/*;
do
	if [ -x $srv ];
	then
		$srv status
		sleep 1
	fi
done
