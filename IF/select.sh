head -1 *csv > select.txt
ls *csv* | sed 's/.csv//g' | parallel "sed 's/,/\t/g' {}.csv | awk 'NR>1' | grep -v Copyright | grep -v exporting > {}.tsv"
