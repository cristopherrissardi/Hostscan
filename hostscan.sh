#!/bin/bash


if [ "$1" == "" ]

then 

	echo "

			
		░█░█░█▀█░█▀▀░▀█▀░█▀▀░█▀▀░█▀█░█▀█
		░█▀█░█░█░▀▀█░░█░░▀▀█░█░░░█▀█░█░█   https://github.com/cristopherrissardi/Hostscan
		░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀░▀░▀░▀  ------------------------------------------------


Use: $0 + IP (Sem o último número)
Exemplo: $0 10.0.0.
O último dígito será varrido pela ferramenta"

else

	echo "

			
		░█░█░█▀█░█▀▀░▀█▀░█▀▀░█▀▀░█▀█░█▀█
		░█▀█░█░█░▀▀█░░█░░▀▀█░█░░░█▀█░█░█   https://github.com/cristopherrissardi/Hostscan
		░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀░▀░▀░▀  ------------------------------------------------


- O script retorna somente hosts ativos. 
- Pode demorar bastante a varredura.
- Outros detalhes deixarei no repositório!


# # # # # # # # # # # # # # # # # # # # # # 
"

for host in {1..254};
do
ping $1$host -i 0.1 -c 1 | grep "64 bytes" | grep -v "100%" | grep -v "Destination Host Unreachable" | cut -d " " -f 4 | sed 's/.$/ <<-------------- Host Encontrado!/';	
done
echo ""
fi
