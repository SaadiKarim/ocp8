export DEBIAN_FRONTEND=noninteractive
add-apt-repository ppa:ondrej/php -y
apt-get install curl wget python3-pip git unzip -y -qq
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update -y -qq
apt-get install default-jre default-jdk mariadb-server jenkins php7.2 php7.2-{cli,curl,gd,intl,memcache,xml,zip,mbstring,json,mysql} -y -qq
a2enmod rewrite
systemctl enable --now jenkins
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
curl -sS https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar -o /home/vagrant/selenium/selenium-server.jar
wget https://chromedriver.storage.googleapis.com/86.0.4240.22/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/bin
rm chromedriver_linux64.zip
php composer-setup.php
mv composer.phar /usr/local/bin/composer
cd /var/www/html
composer install

