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
