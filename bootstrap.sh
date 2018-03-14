#!/usr/bin/env bash

# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo expanding root file system
sudo resize2fs /dev/sda1

echo adding swap file
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap defaults 0 0' >> /etc/fstab

echo updating package information
apt-add-repository -y ppa:brightbox/ruby-ng >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

install 'development tools' build-essential

install Ruby ruby2.5 ruby2.5-dev ruby-railties
update-alternatives --set ruby /usr/bin/ruby2.5 >/dev/null 2>&1
update-alternatives --set gem /usr/bin/gem2.5 >/dev/null 2>&1

echo installing Bundler
gem install bundler -N >/dev/null 2>&1

echo installing Rails 5
gem install rails --version 5.1

install 'Nokogiri dependencies' zlib zlib1g-dev libffi-dev libxml2 libxml2-dev libxslt1-dev
install 'ExecJS runtime' nodejs
install Git git
install SQLite sqlite3 libsqlite3-dev

# Needed for docs generation.
update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo 'All set!'
