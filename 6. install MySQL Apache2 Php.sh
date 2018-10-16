# Install MySQL
echo 'Executing sudo apt-get update...'
sudo apt-get update
echo 'Done.'
echo 'Installing mysql...'
sudo apt-get install --upgrade -y mysql-server
echo 'Done.'
echo 'Installing mysqldb for python3...'
sudo apt-get install --upgrade -y python3-mysqldb
echo 'Done.'

# Install apache2
echo 'Installing apache2...'
sudo apt-get install --upgrade -y apache2
echo 'Done.'

# Install php
echo 'Installing php5.6 from ppa:ondrej/php repository...'
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install --upgrade -y php5.6
sudo apt-get install --upgrade -y php5.6-mysqli
echo 'Done.'

# To prevent "Group by non aggregated columns allowed" error
echo sql_mode = STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION | sudo tee --append /etc/mysql/mysql.conf.d/mysqld.cnf

echo \#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\# Very Important \#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
echo Check mysql username, password, database name in "backend/utils/databaseEntry.py"
echo \#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

echo 'Finished.'
