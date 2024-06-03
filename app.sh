#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y nginx unzip mysql-server php-{curl,gd,intl,mbstring,soap,xml,xmlrpc,zip,fpm,mysql}
wget https://wordpress.org/latest.zip https://github.com/aarshsqaureops/nginx-configuration/archive/refs/heads/main.zip
unzip latest.zip -d /tmp/wordpress
unzip main.zip -d /tmp/nginx-configuration
sudo cp -r /tmp/wordpress/wordpress/* /var/www/html/ && sudo cp -r /tmp/nginx-configuration/nginx-configuration-main/* /etc/nginx/sites-enabled/
sudo rm -rf latest.zip /tmp/wordpress main.zip /tmp/nginx-configuration /etc/nginx/sites-enabled/default
sudo systemctl reload php8.1-fpm.service nginx.service
wget https://s3.us-east-2.amazonaws.com/amazoncloudwatch-agent-us-east-2/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
#sudo aws configure --profile AmazonCloudWatchAgent
#sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:configuration-file-path
