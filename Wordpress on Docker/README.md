# Deploy Wordpress on Docker
This terraform script will create 2 container to deploy your wordpress site and Open the site to your given port. One container will be **wordpress:latest** and other will be **mariadb** for backend. So that you can manage it saperately. You can specify your own if you already have created site.

## Getting Started
* First clone the project. 
* Install Terraform and docker.(Just run the script **install.sh**) 
* Set variables ([secrets.auto.tfvars](https://github.com/ganatradeval/Terraform/blob/master/Wordpress%20on%20Docker/secrets.auto.tfvars) and [terraform.tfvars](https://github.com/ganatradeval/Terraform/blob/master/Wordpress%20on%20Docker/terraform.tfvars)).
* Run 
```
	terraform init
	terraform plan
	terraform apply
```
And you are done. Access your website using URL and port you have set up.
