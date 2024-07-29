sudo yum update -y
sudo dnf update -y
sudo yum install httpd php -y
sudo dnf install mariadb-server -y
sudo service httpd restart
sudo service php-fpm restart
sudo service mariadb restart
cd /var/www/html
sudo touch index.html my.php date.php
echo "apache is working" | sudo tee index.html
echo "<?php phpinfo(); ?>" | sudo tee my.php
echo "<?php $date=date_create_from_format("j-M-Y","15-Mar-2013"); date_format($date,"Y/m/d");?>" | sudo tee date.php
