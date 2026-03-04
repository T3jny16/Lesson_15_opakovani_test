echo "Ahoj" | fold -w1 | nl -w1 -s ';' > slovo.txt

tr '[:upper:]' '[:lower:]' < slovo.txt > slovo_lower.txt
mv slovo_lower.txt slovo.txt

sort -t ';' -k2 slovo.txt > slovo_sorted.txt

join -t ';' -1 2 -2 1 slovo_sorted.txt hlaskovaci_abcceda.txt > spojene.txt

sort -t ';' -k3,3n spojene.txt | cut -d';' -f3