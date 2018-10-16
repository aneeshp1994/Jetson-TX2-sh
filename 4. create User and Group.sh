# Create a group frs to add two users to
echo 'Creating a group named "frs"...'
sudo groupadd frs
echo 'Done.'

# Add users nvidia, ubuntu and www-data
echo 'Adding members nvidia, ubuntu and www-data to the group...'
sudo usermod -a -G frs nvidia
sudo usermod -a -G frs ubuntu
sudo usermod -a -G frs www-data
echo 'Done.'

# Check if users are added
echo 'Make sure that the group frs has all the users...'
grep frs /etc/group
echo 'Done.'
echo 'Finished.'
