resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "new-dove"
  vpc_security_group_ids = ["sg-093edceca0ed48891"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}
