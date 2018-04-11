# Create a group frs to add two users to
sudo groupadd frs

# Add users nvidia, ubuntu and www-data
sudo usermod -a -G frs nvidia
sudo usermod -a -G frs ubuntu
sudo usermod -a -G frs www-data

# Check if users are added
echo "Make sure that the group frs has all the users below"
grep frs /etc/group
