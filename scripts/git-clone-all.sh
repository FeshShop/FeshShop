#!/bin/bash
REPOSITORIES=(FeshShop.Common FeshShop.Identity FeshShop.Products FeshShop.Customers FeshShop.Discounts FeshShop.ApiGateway)

if [ "$1" = "-p" ]
  then
    echo ${REPOSITORIES[@]} | sed -E -e 's/[[:blank:]]+/\n/g' | xargs -I {} -n 1 -P 0 sh -c 'printf "========================================================\nCloning repository: {}\n========================================================\n"; git clone https://github.com/FeshShop/{}.git'
  else
    cd ..
    for REPOSITORY in ${REPOSITORIES[*]}
    do
      echo Cloning repository: $REPOSITORY
      git clone https://github.com/FeshShop/$REPOSITORY.git
    done
fi

read -p "Press any key to exit ..."