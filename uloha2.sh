#!/bin/bash
sort -t';' -k1,1 alphabet.txt > alphabet_sorted.txt
sort -t';' -k1,1 sifra.txt > sifra_sorted.txt
join -t';' alphabet_sorted.txt sifra_sorted.txt > spojeno_sifra.txt
sort -t';' -k3,3n spojeno_sifra.txt | cut -d ';' -f2 | tr '_' ' ' | tr -d '\r\n'

echo " "