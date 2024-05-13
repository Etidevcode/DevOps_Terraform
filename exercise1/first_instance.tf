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
