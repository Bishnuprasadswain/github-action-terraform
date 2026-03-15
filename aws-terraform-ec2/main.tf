resource "aws_instance" "web" {
  ami           = var.ami_id # "ami-06031e2c49c278c8f"
  instance_type = var.instance_type # t2.micro
  tags = var.tags
}
