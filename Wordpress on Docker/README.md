# Deploy Wordpress on Docker
This terraform script will create 2 container to deploy your wordpress site and Open the site to your given port. One container will be wordpress:latest and other will be mariadb for backend. So that you can manage it saperately.

## Getting Started
* First clone the project. 
* Install Terraform and docker. 
* Set variables ([secrets.auto.tfvars]() and [terraform.tfvars]()).
* Run 
	terraform init
	terraform plan
	terraform apply

And you are done. Access your website using URL and port you have set up.