#!/usr/bin/bash

function setup()
{
  module load python/3.8
  source ~/rds/public_databases/software/py38/bin/activate
}

if [ "$(uname -n | sed 's/-[0-9]*$//')" == "login-q" ]; then
   module load ceuadmin/openssh/9.7p1-icelake
   module load ceuadmin/libssh/0.10.6-icelake
fi

setup
mkdocs build
mkdocs gh-deploy

git add .gitignore
git commit -m ".gitignore"
git add docs
git commit -m "docs"
git add mkdocs.yml
git commit -m "mkdocs.yml"
git push

function st_sh()
{
  git add .gitignore
  git commit -m ".gitignore"
  git add README.md
  git commit -m "README"
  git add mkdocs.yml
  git commit -m "mkdocs.yml"
  git add schedule.md mike.md
  git commit -m "schedule"
  git add calendarview-1.2 fullcalendar-4.3.1
  git commit -m "Calendar"
  git add IF
  git commit -m "journal impact factor"
  git add papers
  git commit -m "discussed papers"
  git add docs.sh
  git commit -m "batch"
  git push
}

# 11-08-2023 adopt mkdocs
# 01-09-2022 add mike.md
# 03-02-2020 JHZ
