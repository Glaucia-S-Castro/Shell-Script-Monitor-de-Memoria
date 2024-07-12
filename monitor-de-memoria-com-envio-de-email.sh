#!/bin/bash

memoria_total=$(free | grep -i mem | awk '{ print $2 }')
memoria_consumida=$(free | grep -i mem | awk '{ print $3 }')
relacao_memoria_atual_total=$(bc <<< "scale=2;$memoria_consumida/$memoria_total *100" | awk -F. '{ print $1 }')
simbolo='%'
relacao_memoria_formatado=${relacao_memoria_atual_total}${simbolo}

if [ $relacao_memoria_atual_total -gt 80 ]
then
	mail -a "From: email-rementente@outlook.com" -s "Consumo de memória acima do limite" glauciacastro.dev@gmail.com<<del
O consumo de memoria esta acima do limite que foi especificado. Atualmente o consumo e de $(free -h | grep -i mem | awk '{ print $3 }') que representa $relacao_memoria_formatado do total.
del

fi
