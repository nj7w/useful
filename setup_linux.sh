#!/usr/bin/env bash

sudo apt -y install python3
sudo apt -y install python3-pip

echo 'Installing python packages'
mylist="numpy scipy pandas matplotlib statsmodels pandas_datareader pyflakes scikit-learn patsy progressbar XlsxWriter xlrd ipdb ropevim configparser plotly cufflinks"
for proj in $mylist; do
   pip3 install --upgrade --user $proj
done

echo 'seting up vim'
mkdir -p ~/.vim/autoload
sudo apt -y install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apy -y install tmux
