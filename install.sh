#!/bin/bash



# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install prerequisite for vim80
sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev
sudo mkdir /usr/include/lua5.1/include
sudo cp /usr/include/lua5.1/*.h /usr/include/lua5.1/include/

# install vim80
cd /opt/
git clone https://github.com/vim/vim
cd vim/src
make distclean # if vim was prev installed
./configure --with-features=huge \
    --enable-rubyinterp \
    --enable-largefile \
    --disable-netbeans \
    --enable-pythoninterp \
    --with-python-config-dir=/usr/lib/python2.7/config \
    --enable-perlinterp \
    --enable-luainterp \
    --with-luajit \
    --enable-fail-if-missing \
    --with-lua-prefix=/usr/include/lua5.1 \
    --enable-cscope
make 
sudo make install


# install prerequisite for vim80
sudo apt-get install clang libclang-dev


# ag install 
apt-get install silversearcher-ag
# command to find the package install location
# dpkg -L package 
# ex: dpkg -L clang


# install plugin
vim -c :PlugInstall




