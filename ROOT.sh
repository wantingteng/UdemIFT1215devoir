#Yehao Yan         
#Wanting Teng   
#(Q1)

#!/bin/bash

Dijkstra(){
	y=0
	delta=32768
	echo " please enter a number: "
	read value
	while [ $delta -ne 0 ]; do
		let somme=$y+$delta
		let sommetotal=$somme*$somme
		if [ $sommetotal -le "$value" ]; then
			let y=$y+$delta
		else
			let delta=$delta/2
		fi
	done
	echo The result is $y

}

Dijkstra
