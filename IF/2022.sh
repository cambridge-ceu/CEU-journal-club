#!/usr/bin/bash

ls csv/*2022.csv | \
xargs -l -I {} basename {} | \
parallel -C' ' '
  sed "1,2d" csv/{} | \
  tac | \
  sed "1,3d" | \
  tac | \
  awk -vf={} "{gsub(/_IF_2022.csv/,\"\",f);print  \$0> \"IF_2022_\" f \".csv\"}"
'
