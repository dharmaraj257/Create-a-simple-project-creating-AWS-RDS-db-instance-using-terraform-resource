
# Create an AWS RDS database instance using Terraform resources.

A brief description of what this project does and who it's for




Step 1:	Create a Ubuntu server

1. Launch the instance and give the name ubuntu.

2.	Select Ubuntu and t2.micro-CPU.
3.	Download a new key pair.
4.	Select default VPC
5.	In the security group SSH, https, and HTTP allow anywhere.
6.	Launch instance.

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/76765ed0-f903-42f3-a087-93385398f451)

Step 2:	Log in to the Ubuntu server using Putty
1.	copy the public IPv4 and paste it on the putty.

2.	Select SSH and go to the authentication and upload the ppk file
3.	Then enter the password ubuntu and log in.
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/910e792c-4754-4b40-bb99-1c158779b5aa)


Step 3:	Update the server
1.	to update the server use the command

2.	    Sudo apt update -y

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/74173d73-abc7-4dbe-858d-8c22d3b3ab86)


Step 4:	Install the terraform on the server.
1.	visit https://www.terraform.io/ and click the download button

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/1f615189-889b-41aa-9edb-89461ac65a2c)

2.	select Linux amd64 and copy the link address.

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/76b22b22-d294-4d31-b24d-181464f09da5)

3.	Paste on the server wget https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_linux_amd64.zip

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/4c809fe1-7960-47d3-a7ac-68b5bdd0eb84)

4.	    sudo apt install unzip -y

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/2ce47bc7-c165-4d74-a377-f10888fd1e7a)

5.	    sudo unzip terraform_1.3.4_linux_amd64.zip

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/43c9e7eb-7fcd-4667-af74-844aa19f12ba)

6.	    sudo cp terraform /bin

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/6512a4dd-d1fb-495d-8aae-02f455c4ab09)

7.	    terraform -v
![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/30967659-0306-4fba-be06-dea66d2cd41c)

Setp 5:	Select registry and create rds.tf file
1. Go to the home page and click on the registry

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/e9e4e5a8-4b0d-4b29-bdeb-e08822fb6a5e)

2.	Then select the AWS provider and go to the documentation

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/fe1a5d95-c691-47d2-847a-f0d3f1fbd6d1)

3.	search RDS and copy the resource RDS    

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/515c0585-756d-48ca-87e5-76fc35a7f570)

![image](https://github.com/dharmaraj257/Terraform-Projects/assets/100831265/b332ae20-9f8f-4673-b8e8-9282e3d045d7)


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

![image](https://github.com/dharmaraj257/Hosting-a-Word-press-website-on-AWS/assets/100831265/65105b55-15e6-475f-8338-ca6b7997d755)

4.      sudo terraform apply.
![image](https://github.com/dharmaraj257/Hosting-a-Word-press-website-on-AWS/assets/100831265/1872c557-8b08-49f2-9580-3f7a9f8692ff)


 5. Check the Output db instance.

![image](https://github.com/dharmaraj257/Hosting-a-Word-press-website-on-AWS/assets/100831265/6d023b69-634d-4efe-b62e-14d0c2d9c3b9)




