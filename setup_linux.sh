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

# Create git-repos folder and get contents of useful in it:
mkdir -p ~/git-repos
cd ~/git-repos

git clone https://github.com/nj7w/useful.git

\mv ~/.bashrc{,.o}
\mv ~/.bash_aliases{,.o}
\mv ~/.vimrc{,.o}
\mv ~/.vim{,.o}
\mv ~/.tmux.conf{,.o}

\cp -u ~/git-repos/useful/.bashrc ~/.
\cp -u ~/git-repos/useful/.bash_aliases ~/.
\cp -u ~/git-repos/useful/.vimrc ~/.
\cp -u ~/git-repos/useful/.tmux.conf ~/.
\cp -ru ~/git-repos/useful/.vim ~/.


# Ubuntu related stuff
sudo apt install unity-tweak-tool fonts-inconsolata

# Launch unity-tweak-tool (search on top left)
# Overview -> Appearance -> Fonts:
#     Monospace font: Inconsolata Medium 9
#     Default font: Droid Sans 9
#     Document font -> Droid Sans 9
#     Windows title font -> Droid Sans Bold 10
#     Hinting -> Full
########################################


