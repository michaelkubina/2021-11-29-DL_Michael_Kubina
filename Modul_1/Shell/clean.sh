# Datei einlesen und bereinigen
grep --line-buffered -v "#\|MAYBE\|IMPORTANT" ~/2021-11-29-DL_Michael_Kubina/Modul_1/Shell/2021-11-29-Article_list_dirty.tsv | \
# Spalte ISSN und JAHR extrahieren
cut --fields 5,12 | \

tail -n +2 | \
#cut --fields 5,12 > ~/2021-11-29-DL_Michael_Kubina/Modul_1/Shell/2021-11-29-Article_list_clean.tsv
# Spalte ISSN und JAHR extrahieren

# ziehe nur valde ISSNs und Jahre heraus

#sed '/\b(\d{4}-\d{3,4}(?:X))|\b(\d{4})/g'
#sed -e '/(\b(\d{4}-\d{3,4}(?:X))\t\b(\d{4}))/g'
#sed -e 's/(\b(\d{4}-\d{3,4}(?:X))\t\b(\d{4}))/$&/g'
##grep -e '\([0-9]\{4\}-[0-9X]\{4\}[[:space:]][0-9]\{4\}\)'
#sed -r "s/\(\b\(\d\{4\}-\d\{3,4\}\(?:X\)\)\t\b\(\d\{4\}\)\)/$&/g"
#sed -r "s/ISSN/$&Blubb/g"
#grep -e "[0-9]\{4\}-[0-9]\{3,4\}" ~/2021-11-29-DL_Michael_Kubina/Modul_1/Shell/2021-11-29-Article_list_clean.tsv
#sed -E 's/\d{4}/HALLO/g'

sed -e 's/.*\([0-9]\{4\}-[0-9X]\{4\}[[:space:]][0-9]\{4\}\).*/\1/g' | \

uniq | \

sort > ~/2021-11-29-DL_Michael_Kubina/Modul_1/Shell/2021-11-29-Article_list_clean.tsv
