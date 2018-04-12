cd $HOME

# Enable all the cores of CPU
sudo nvpmodel -m 0

echo 'Performing update and upgrade to get all softwares up to date...'
sudo apt-get update && sudo apt-get upgrade
echo 'Done.'

# Add aliases to pip3.5 and python3.5
echo alias pip=\”sudo -H pip3\” >> .bashrc
echo alias python=\”python3\” >> .bashrc

# Add some exports to set up locale
echo export LC_ALL="en_US.UTF-8" >> .bashrc
echo export LANGUAGE="en_US.UTF-8" >> .bashrc

# Install some necessities before restarting
echo 'Installing git, python3-pip and subversion...'
sudo apt-get install --upgrade git
sudo apt-get install python3-pip
sudo apt-get install --upgrade subversion
echo 'Done.'

# Allow Jetson to be remotely accessible by issuing following command
echo 'Note: The following command requires to be run on the local machine without the use of ssh: gsettings set org.gnome.Vino require-encryption false'
echo 'Running gsettings set org.gnome.Vino require-encryption false...'
# Actual command
gsettings set org.gnome.Vino require-encryption false
echo 'Done.'

# Tell user that the system will restart to let the changes take effect
echo 'Restart the system for the changes to take effect.'
