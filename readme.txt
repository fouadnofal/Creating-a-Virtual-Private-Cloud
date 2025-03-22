
Creating a Virtual Private Cloud

Step 1 :
	Creating a VPC under Network session, and assign the CIDR block and give it a Label name.
Step 2 :
	Creating Public and private subnets
Step 3 :
	Creating an internet gateway
Step 4 :
	Configuring route tables
Step 5 :
	Creating a security group for the application server
Step 6 :
	Launching an application server in the public subnet
	
	#!/bin/bash
	sudo su
	# Install Apache Web Server and PHP
	yum install -y httpd mysql
	amazon-linux-extras install -y php7.2
	# Download Lab files
	#wget https://aws-tc-largeobjects.s3.amazonaws.com/CUR-TF-100-TULABS-153-lab-creating-vpc/inventory-app.zip
	wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-PRYODA-1-37918/4-lab-creating-vpc/s3/inventory-app.zip
	unzip inventory-app.zip -d /var/www/html/
	# Download and install the AWS SDK for PHP
	wget https://github.com/aws/aws-sdk-php/releases/download/3.62.3/aws.zip
	unzip aws -d /var/www/html
	# Turn on web server
	chkconfig httpd on
	service httpd start

	


