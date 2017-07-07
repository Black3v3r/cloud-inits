#!/bin/sh
export DEBIAN_FRONTEND=noninteractive;

whoami
pwd
export HOME="/root"
echo $HOME

sed -ri 's/(Port 22)/\1\nPort 443/' /etc/ssh/sshd_config
echo "\nPort 443" >> /etc/ssh/sshd_config
service ssh restart

apt-get update -y && apt-get upgrade -y
apt-get install -y vim git curl wget zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s /bin/zsh
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="candy"/g' ~/.zshrc
source ~/.zshrc

echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
