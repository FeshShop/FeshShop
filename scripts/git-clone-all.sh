#!/bin/bash
REPOSITORIES=(FeshShop.Common FeshShop.Identity FeshShop.Products)

if [ "$1" = "-p" ]
  then
    echo ${REPOSITORIES[@]} | sed -E -e 's/[[:blank:]]+/\n/g' | xargs -I {} -n 1 -P 0 sh -c 'printf "========================================================\nCloning repository: {}\n========================================================\n"; git clone https://github.com/FeshShop/{}.git'
  else
    for REPOSITORY in ${REPOSITORIES[*]}
    do
      cd ..
      echo Cloning repository: $REPOSITORY
      git clone https://github.com/FeshShop/$REPOSITORY.git
    done
fi

read -p "Press any key to exit ..."