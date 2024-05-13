Exercise1
============

$ aws configure
AWS Access Key ID [****************J5ZT]: 
AWS Secret Access Key [****************8E2J]:
Default region name [us-east-1]:
Default output format [json]: json


$ terraform --help


$ cd /c/vagrant-vms/DevOps_Terraform/


$ mkdir exercise1


$ cd exercise1/


$ ls
first_instance.tf


$ cat first_instance.tf


$ cat first_instance.tf
provider "aws" {
        region = "us-east-1"
}

resource "aws_instance" "intro" {
        ami = "ami-07caf09b362be10b8"
        instance_type = "t2.micro"
        availability_zone = "us-east-1a"
        key_name = "dove-key"
        vpc_security_group_ids = ["sg-093edceca0ed48891"]
        tags = {
                Name = "Dove-Instance"
        }
}

$ terraform init

$ ls -a
./  ../  .terraform/  .terraform.lock.hcl  first_instance.tf

$ terraform validate

$ terraform fmt
first_instance.tf

$ cat first_instance.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-07caf09b362be10b8"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-093edceca0ed48891"]
  tags = {
    Name = "Dove-Instance"
  }
}

$ terraform plan


$ terraform apply


$ vim first_instance.tf


$ cat first_instance.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-07caf09b362be10b8"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-093edceca0ed48891"]
  tags = {
    Name = "Dove-Instance"
    Project = "Dove"
  }
}

$ terraform validate

$ terraform fmt
first_instance.tf


$ cat first_instance.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-07caf09b362be10b8"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-093edceca0ed48891"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}


$ terraform plan


$ terraform apply

$ ls

$ cat terraform.tfstate

$ terraform destroy


Exercise2
==

$ terraform init


$ terraform validate

$ terraform fmt

$ cat vars.tf
variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-07caf09b362be10b8"
    us-east-2 = "ami-0ddda618e961f2270"
  }
}

$ cat instance.tf
resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-093edceca0ed48891"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}


$ terraform plan

$ terraform apply

$ terraform plan

$ terraform destroy


Exercise3
==


$ ssh-keygen

$ ls
$ touch vars.tf
$ touch providers.tf
$ touch web.sh
$ touch instance.tf

$ terraform init

$ terraform validate

$ terraform fmt


$ terraform plan

$ terraform apply

$ terraform destroy

