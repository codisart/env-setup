#!/bin/sh

cd $(dirname $(readlink -f $0))
cd ../..

git clone https://github.com/codisart/datasioning.git datasioning/repository

git clone https://github.com/theloulous/php-mise-en-place.git mise-en-place/repository

git clone https://github.com/codisart/polygones.git polygones/repository

git clone https://github.com/codisart/storal-repository.git storal-repository/repository

git clone https://github.com/codisart/laminas-hydrator.git laminas-hydrator/repository
cd laminas-hydrator/repository
git remote add upstream https://github.com/laminas/laminas-hydrator.git
cd -

git clone https://github.com/codisart/laminas-validator.git laminas-validator/repository
cd laminas-validator/repository
git remote add upstream https://github.com/laminas/laminas-validator.git
cd -

git clone https://github.com/codisart/core.git owncloud/repository
cd owncloud/repository
git remote add upstream https://github.com/owncloud/core.git
cd -

git config --local include.path ../.gitconfig
