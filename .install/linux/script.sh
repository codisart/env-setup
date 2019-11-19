cd datasionning
git clone https://github.com/codisart/datasioning.git repository
cd ..

git clone https://github.com/codisart/zend-validator.git zend-validator/repository
cd zend-validator/repository
git remote add upstream https://github.com/zendframework/zend-validator.git
cd -

git clone https://github.com/codisart/zend-hydrator.git zend-hydrator/repository
cd zend-hydrator/repository
git remote add upstream https://github.com/zendframework/zend-hydrator.git
cd -

git clone https://github.com/codisart/zend-file.git zend-file/repository
cd zend-file/repository
git remote add upstream https://github.com/zendframework/zend-file.git
cd -

git config --local include.path ../.gitconfig
