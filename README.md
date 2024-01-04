
# Create an AWS RDS database instance using Terraform resources.

A brief description of what this project does and who it's for




Step 1:	Create a Ubuntu server

1. Launch the instance and give the name Ubuntu.

2.	Select Ubuntu and t2.micro-CPU.
3.	Download a new key pair.
4.	Select default VPC
5.	In the security group SSH, https, and HTTP allow anywhere.
6.	Launch instance.


Step 2:	Log in to the Ubuntu server using Putty
1.	copy the public IPv4 and paste it on the putty.

2.	Select SSH go to the authentication and upload the ppk file
3.	Then enter the password ubuntu and log in.


Step 3:	Update the server
1.	to update the server use the command

2.	    Sudo apt update -y



Step 4:	Install the terraform on the server.
1.	visit https://www.terraform.io/ and click the download button


2.	select Linux amd64 and copy the link address.


3.	Paste on the server wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip


4.	    sudo apt install unzip -y


5.	    sudo unzip terraform_1.3.4_linux_amd64.zip


6.	    sudo cp terraform /bin


7.	    terraform -v

Step 5:	Select the registry and create an rds.tf file
1. Go to the home page and click on the registry


2.	Then select the AWS provider and go to the documentation


3.	search RDS and copy the resource RDS    




Step 6:	Creating RDS db Instance using terraform script.
1.	Sudo mkdir RDS
2.	cd RDS and create file sudo nano RDS.tf
```terraform
provider "aws" {
  region = "us-east-1"
  access_key = "AKI****************UI"
  secret_key = "r&***************************KaaB3"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "admin"
  password             = "temp12345"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
```
3.	    sudo terraform init.


4.      sudo terraform apply.


 5. Check the Output db instance.

![image](https://github.com/dharmaraj257/Hosting-a-Word-press-website-on-AWS/assets/100831265/6d023b69-634d-4efe-b62e-14d0c2d9c3b9)




