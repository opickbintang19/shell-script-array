#!/bin/bash

declare -a angka
read -p "Input : " input
jumlah=0
i=0
while [ $i -lt $input ]
do
	read isi
	angka[$i]=$isi
	let i=$i+1
	let jumlah=jumlah+$isi
done

total=$(expr $jumlah / ${#angka[@]} )
echo "IPS Mahasiswa = $jumlah / ${#angka[@]}"
echo "IPK Mahasiswa = $total"