#!/bin/bash

hosts=`cat ./multi-Os-host`

for host in hosts
do
	machine_type=`sudo cat /etc/redhat-release`
	if [ $? -eq 0 ] && [ host -eq 192.168.56.13 ]
	then
		echo "################################################################"
        	echo "installing on Web server"
       		echo "################################################################"
		sudo yum install yum-utils
		sudo touch /etc/yum.repos.d/nginx.repo
		cat /etc/yum.repos.d/nginx.repo<<-EOF
		[nginx-stable]
		name=nginx stable repo
		baseurl=http://nginx.org/packages/centos/${releasever}/${basearch}/
		gpgcheck=1
		enabled=1
		gpgkey=https://nginx.org/keys/nginx_signing.key
		module_hotfixes=true

		[nginx-mainline]
		name=nginx mainline repo
		baseurl=http://nginx.org/packages/mainline/centos/${releasever}/{$basearch}/
		gpgcheck=1
		enabled=0
		gpgkey=https://nginx.org/keys/nginx_signing.key
		module_hotfixes=true	
		EOF
		sudo yum install nginx -y
		sudo sleep 2
		sudo systemctl restart nginx
		sudo systemctl enable nginx
		sudo systemctl status nginx
		sudo touch /etc/nginx/conf.d/reverse_proxy.conf
		cat /etc/nginx/conf.d/reverse_proxy.conf<<-EOF
		upstream web02 {
		  server web02:8080;
		}
		server {
		  listen 80;
		location / {
		  proxy_pass http://web02;
		}
		}
		EOF
		mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled
		nginx -t
		sudo sleep 2
		sudo nginx -s reload
	elif [ $? -eq 0 ] && [ host -eq 192.168.56.14 ]
	then
		echo "################################################################"
		echo "installing on App server"
		echo "################################################################"
		sudo yum install -y yum-utils
		sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
		sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
		sudo systemctl status docker
		echo "The status code for installing and starting docker is `$?`"
		sudo systemctl enable docker
		sudo sleep 1
		sudo docker run -it -v vproappdata:/usr/local/tomcat/webapps -p 8000:8000 -d --name myApplication vprocontainers/vprofileapp
		echo "The status of running the Application is `$?`"
	else
		echo "################################################################"
	        echo "installing on DB server"
	        echo "################################################################"
		# Add Docker's official GPG key:
		sudo apt-get update
		sudo apt-get install ca-certificates curl
		sudo install -m 0755 -d /etc/apt/keyrings
		sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
		sudo chmod a+r /etc/apt/keyrings/docker.asc
	
		# Add the repository to Apt sources:
		echo \
		  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
		  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
		  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
		sudo apt-get update
		sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
		sudo systemctl status docker
	        echo "The status code for installing and starting docker is `$?`"
	        sudo systemctl enable docker
	        sudo sleep 1
	        sudo docker run -it -v vprodbdata:/var/lib/mysql -p 11211:11211 -d --env MYSQL_ROOT_PASSWORD=vprodbpass --name myDB vprocontainers/vprofiledb
		echo "The status of running the DB is `$?`"
	fi
done	

