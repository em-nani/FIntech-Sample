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
