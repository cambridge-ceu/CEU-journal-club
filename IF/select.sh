# 2-7-2020 JHZ

# working on .csv attachment by Steven Bell

chmod -x csv/*
head -1 csv/*csv > select.txt
ls csv | sed 's/.csv//g' | parallel "sed 's/,/\t/g' csv/{}.csv | awk 'NR>1' | grep -v Copyright | grep -v exporting > {}.tsv"

sed '127,128d;1,2d' csv/IF_2019_Statistics.csv | tr ',' '\t'> IF_2019_Statistics.tsv
