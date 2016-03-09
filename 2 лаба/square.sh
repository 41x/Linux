#!/bin/bash
let a=$1
let b=$2
let c=$3
echo $a"x^2 + "$b"x + "$c
let d=$[$b*$b]-$[4*$a*$c]
echo "d="$d
z=$[2*$a]
echo "2a="$z
if [ $d -gt 0 ]; then
 sq=$(echo "scale=2; sqrt($d)" | bc)
 echo "sqrt(d)="$sq
 x=$(echo "scale=2; -$b+$sq" | bc)
 echo "-b+sqrt(d)="$x
 y=$(echo "scale=2; -$b-$sq" | bc)
 echo "-b-sqrt(d)="$y
 z1=$(echo "scale=2; $x/$z" | bc)
 echo "x1 = "$z1 
 z2=$(echo "scale=2; $y/$z" | bc)
 echo "x2 = "$z2
else
 let d=$[-$d]
# echo "d="$d
 sq=$(echo "scale=2; sqrt($d)" | bc)
 echo "sqrt(d)="$sq
 x=$(echo "scale=2; -$b/$z" | bc)
 y=$(echo "scale=2; $sq/$z" | bc)
 echo "x1 = "$x" + "$y"i"
 echo "x2 = "$x" - "$y"i"
fi 