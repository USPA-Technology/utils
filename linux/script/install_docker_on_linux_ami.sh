#!/bin/sh

sudo yum update -y;
if sudo amazon-linux-extras install -y docker || sudo yum install -y docker 
then
    sudo systemctl enable docker;
    sudo service docker start;
    sudo usermod -a -G docker ec2-user;
    sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose &&
    sudo chmod +x /usr/local/bin/docker-compose;
    printf "\033[1;32mSetup Completed. Rebooting ... \033[0m\n";
    sudo reboot;
else
    printf "\033[1;31mThis script is inapplicable for the current situation! \033[0m\n";
fi

