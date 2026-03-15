/*resource "aws_instance" "web" {
  ami           = "ami-06031e2c49c278c8f"
  instance_type = "t2.micro"
   count=2
  tags = {
    Name = "HelloWorld"
    test = "dev"
  }
}*/
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "my_ec2_instance" {
  source = "./aws-terraform-ec2"

  ami_id        = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  tags = {
    Name = "My Instance"
  }
}
