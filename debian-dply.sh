#!/bin/sh
export DEBIAN_FRONTEND=noninteractive;

whoami
pwd
export $HOME="/root"
echo $HOME

echo "\nPort 443" >> /etc/ssh/sshd_config
service ssh restart

apt-get update -y
apt-get install -y vim git curl wget zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s /bin/zsh

echo "syntax on" >> /root/.vimrc
echo "set nu" >> /root/.vimrc