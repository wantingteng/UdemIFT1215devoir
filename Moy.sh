#Yehao Yan         
#Wanting Teng     

#!/bin/bash

n=0
cat $1 | while read line
do
        if [ $n -eq 0 ]; then
          echo   ${line} >> LISTEMOY
          n+=1

        else
                tp1=$(echo $line | cut -d: -f4)
                tp2=$(echo $line | cut -d: -f6)
                tp3=$(echo $line | cut -d: -f7)
                tp4=$(echo $line | cut -d: -f9)
                intra=$(echo $line | cut -d: -f5)
                final=$(echo $line | cut -d: -f8)

                moyenne=$(echo $tp1*0.075+$tp2*0.075+$tp3*0.075+$tp4*0.075+$intra*0.3+$final*0.4 | bc)

                echo $line $moyenne : >> LISTEMOY
        fi
done


