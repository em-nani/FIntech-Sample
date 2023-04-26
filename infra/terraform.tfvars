aws_region      = "us-east-1"          # The AWS region to create resources in
vpc_cidr_block  = "172.31.0.0/16"         # The CIDR block for the VPC
subnet_cidr_block = "172.31.32.0/20"       # The CIDR block for the subnet
key_name        = "jenkins_nexus"   # The key pair name to use for the EC2 instances
instance_type   = "t2.micro"            # The instance type for Jenkins and Nexus instances
ssh_username    = "ec2-user"
jenkins_ami_id  = "ami-0fa1de1d60de6a97e" # The Amazon Linux 2 AMI ID for the Jenkins instance
nexus_ami_id    = "ami-0fa1de1d60de6a97e" # The Amazon Linux 2 AMI ID for the Nexus instance
