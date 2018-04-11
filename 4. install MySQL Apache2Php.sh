# Install MySQL
sudo apt-get update
sudo apt-get install --upgrade -y mysql-server
sudo apt-get install --upgrade python3-mysqldb

# Install apache2
sudo apt-get install --upgrade -y apache2

# Install php
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install --upgrade -y php5.6
