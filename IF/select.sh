# 27-6-2017 JHZ

# working on .csv attachment by Stephen Bell

chmod -x csv/*
head -1 csv/*csv > select.txt
ls csv | sed 's/.csv//g' | parallel "sed 's/,/\t/g' csv/{}.csv | awk 'NR>1' | grep -v Copyright | grep -v exporting > {}.tsv"
