cd $HOME

# Enable all the cores of CPU
sudo nvpmodel -m 0

sudo apt-get update && sudo apt-get upgrade

# Add aliases to pip3.5 and python3.5
echo alias pip=\”sudo -H pip3\” >> .bashrc
echo alias python=\”python3\” >> .bashrc
export LC_ALL=C

# Install some necessities before restarting
sudo apt-get install --upgrade git
sudo apt-get install python3-pip
sudo apt-get install --upgrade subversion

# Tell user that the system will restart to let the changes take effect
echo 'Restart the system for the changes to take effect.'
