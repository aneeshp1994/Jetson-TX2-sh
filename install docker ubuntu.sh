# Add GPG key of official Docker repository
echo "Adding key to official docker repository..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "Done."

# Add docker repo to apt source
echo "Adding docker repository to the source..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo "Done."

# Update package database
echo "Updating package database..."
sudo apt-get update
echo "Done."

# Make sure that you are installing from official docker repo instead of Ubuntu repo
echo "Please make sure that you are installing docker from official docker repository..."
apt-cache policy docker-ce

# The output of command above should look like this:
echo "Does the output look something like the following? (Versions may differ)
docker-ce:
  Installed: (none)
  Candidate: 17.03.1~ce-0~ubuntu-xenial
  Version table:
     17.03.1~ce-0~ubuntu-xenial 500
        500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
     17.03.0~ce-0~ubuntu-xenial 500
        500 https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
(Y/N)"

read docker_correct_repo

if ! [$docker_correct_repo = "Y" || $docker_correct_repo = "Yes" || $docker_correct_repo = "y" || $docker_correct_repo = "yes"]
then
    echo "Please make sure that you are installing from official docker repository before proceeding."
    exit 1
fi

# Install docker
echo "Installing docker..."
sudo apt-get install -y docker-ce
echo "Done."

# Check that docker process is running
echo "Please check that the docker daemon is running."
sudo systemctl status docker

# Output of above should look something like this
echo "Does the output look something like this?
● docker.service - Docker Application Container Engine
   Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
   Active: active (running) since Sun 2016-05-01 06:53:52 CDT; 1 weeks 3 days ago
     Docs: https://docs.docker.com
 Main PID: 749 (docker)
(Y/N)"

read service_status

if ! [$service_status = "Y" || $service_status = "Yes" || $service_status = "y" || $service_status = "yes"]
then
    echo "Please make sure that the docker service is running properly."
fi

# Add an alias to execute the command "docker" as a sudo
#echo "Adding alias for command 'docker' to .bashrc..."
#echo "alias docker='sudo docker'" >> $HOME/.bashrc
#echo "Done."

# Add the user to docker group
echo "Creating a group docker and adding the user to the group..."
sudo usermod -aG docker ${USER}
su - ${USER}
echo "Done."

# Tell to restart the terminal for the change to take effect
echo "Running .bashrc..."
source $HOME/.bashrc
echo "Please open a new terminal for the change to take effect. In case cannot run docker, try logging in again."
echo "Finished."
