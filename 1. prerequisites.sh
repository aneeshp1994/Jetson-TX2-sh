cd $HOME

# Enable all the cores of CPU
sudo nvpmodel -m 0

sudo apt-get update && sudo apt-get upgrade

# Add aliases to pip3.5 and python3.5
echo alias pip=\”sudo -H pip3\” >> .bashrc
echo alias python=\”python3\” >> .bashrc

# Add some exports to set up locale
echo export LC_ALL="en_US.UTF-8" >> .bashrc
echo export LANGUAGE="en_US.UTF-8" >> .bashrc

# Install some necessities before restarting
sudo apt-get install --upgrade git
sudo apt-get install python3-pip
sudo apt-get install --upgrade subversion

# Allow Jetson to be remotely accessible by issuing following command
gsettings set org.gnome.Vino require-encryption false

# Tell user that the system will restart to let the changes take effect
echo 'Restart the system for the changes to take effect.'
