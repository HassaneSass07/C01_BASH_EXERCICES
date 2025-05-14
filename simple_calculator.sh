#!/bin/bash

read a b op

if [ "$op" = "+" ];then 
  resultat=$(($a + $b))

elif [ "$op" = "-" ];then 
  resultat=$(($a - $b))

elif [ "$op" = "*" ];then 
  resultat=$(($a * $b))

elif [ "$op" = "/" ];then 
  resultat=$(($a / $b))
fi
 echo "resultat : $resultat"
