# 2-7-2020 JHZ

# working on .csv attachment by Steven Bell

chmod -x csv/*
ls csv | sed 's/.csv//g' | parallel "sed 's/,/\t/g' csv/{}.csv | awk 'NR>1' | grep -v Copyright | grep -v exporting > {}.tsv"

chmod -x csv/*2019*
ls csv/*2019*csv | xargs -l basename -s .csv | parallel "sed '1d;s/,/\t/g' csv/{}.csv | head -n -2 > {}.tsv"
