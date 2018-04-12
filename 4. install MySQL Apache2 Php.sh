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

########################### Very Important ##########################################
# Check mysql username, password, database name in "backend/utils/databaseEntry.py"
# Do something to prevent "Group by aggregation" error
#####################################################################################
