#Yehao Yan          
#Wanting Teng     
#!/bin/bash

differ=0
if [ $3 -gt $2 ];then
        let differ=$3-$2


    for file in $( ls -r $1*.PPM ) ;do

        temp=$( echo $file | tr -d 'PIC' | tr -d '.PPM')
        let now=$temp+$differ
        newfile=$1${now}.PPM
        mv $file $newfile
    done

elif [ $3 -lt $2 ];then
        let differ=$2-$3

     for file in $( ls $1*.PPM ) ;do

        temp=$( echo $file | tr -d 'PIC' | tr -d '.PPM')
        let now=$temp-$differ
        newfile=$1${now}.PPM
        mv $file $newfile

     done

fi

