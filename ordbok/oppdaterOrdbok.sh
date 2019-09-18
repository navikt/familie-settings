#!/bin/bash
# Skanner kataloger parallelt til denne for .idea/dictionaries og parser ut ordene fra disse 
# for å legge til i orboken nav.dic. Det gjøres ingen filtrering utover .idea/dictionaries
# alle funn vil inkluderes.

ordboknavn=nav.dic
ordbokkatalog=$(pwd)

cd ../..
kataloger=$(find . -path "*/.idea/dictionaries")
for f in $kataloger; do
  cd "$f" || exit
  grep "<w>" ./* | awk -F"<w>" '{print $2}' | awk -F"</w>" '{print $1}' >> "$ordbokkatalog"/$ordboknavn
  cd - > /dev/null || exit
done

cd "$ordbokkatalog" || exit
sort -u $ordboknavn > temp.dic
mv temp.dic $ordboknavn
