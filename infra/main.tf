provider "aws" {
  region = var.aws_region
}

module "jenkins" {
  source   = "./modules/jenkins"
  key_name = var.aws_key_pair
  subnet_id = aws_default_subnet.default.id
  jenkins_ami_id = var.jenkins_ami_id
}

module "nexus" {
  source   = "./modules/nexus"
  key_name = var.aws_key_pair
  subnet_id = aws_default_subnet.default.id
  nexus_ami_id = var.nexus_ami_id

}

resource "aws_default_vpc" "default" {}

resource "aws_default_subnet" "default" {
  availability_zone = "us-east-1a"
}

resource "aws_instance" "ansible_control_machine" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"
  key_name      = var.aws_key_pair
  subnet_id     = aws_default_subnet.default.id

  vpc_security_group_ids = [aws_security_group.ansible_sg.id]

  tags = {
    Name = "AnsibleControlMachine"
  }
}

resource "aws_security_group" "ansible_sg" {
  name        = "ansible_sg"
  description = "Security group for Ansible control machine"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

