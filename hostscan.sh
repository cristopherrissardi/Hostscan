#!/bin/bash

if [ "$1" == "" ]
then 
	echo ""
	echo ""
	echo ""
	echo "██╗  ██╗ ██████╗ ███████╗████████╗    ███████╗ ██████╗ █████╗ ███╗   ██╗
██║  ██║██╔═══██╗██╔════╝╚══██╔══╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║
███████║██║   ██║███████╗   ██║       ███████╗██║     ███████║██╔██╗ ██║
██╔══██║██║   ██║╚════██║   ██║       ╚════██║██║     ██╔══██║██║╚██╗██║
██║  ██║╚██████╔╝███████║   ██║       ███████║╚██████╗██║  ██║██║ ╚████║
╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝       ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝
                                                                        "
	echo "		 ---------------------------------------"
	echo "		 --  Created By Christopher Rissardi  --"
	echo "		 ---------------------------------------"
	echo ""
	echo "MODO DE USO: $0 IP"
	echo "Exemplo: $0 192.168.0"
	echo "OBS: Essa ferramenta foi criada apenas para scanear hosts ativos na rede!"
else


        echo ""
        echo ""
        echo ""
        echo "██╗  ██╗ ██████╗ ███████╗████████╗    ███████╗ ██████╗ █████╗ ███╗   ██╗
██║  ██║██╔═══██╗██╔════╝╚══██╔══╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║
███████║██║   ██║███████╗   ██║       ███████╗██║     ███████║██╔██╗ ██║
██╔══██║██║   ██║╚════██║   ██║       ╚════██║██║     ██╔══██║██║╚██╗██║
██║  ██║╚██████╔╝███████║   ██║       ███████║╚██████╗██║  ██║██║ ╚████║
╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝       ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝
                                                                        "
        echo "		---------------------------------------"
        echo "		--  Created By Christopher Rissardi  --"
        echo "		---------------------------------------"
	echo ""
	echo "OBS: A FERRAMENTA SO RETORNARA HOSTS ENCONTRADOS!"
	echo "O SCAN PODE DEMORAR DEVIDO A QUANTIDADE DE HOSTS PRESENTE EM SUA REDE"
        echo ""


for host in {1..254};
do
ping -i 0.1 -c 1 $1.$host | grep "64 bytes" | grep -v "100%" | grep -v "Destination Host Unreachable" | cut -d " " -f 4 | sed 's/.$/ <<-------------- HOST ENCONTRADO/';	
done
fi
