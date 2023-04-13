variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1" 
}

variable "aws_key_pair" {
  description = "The AWS key pair name for the Nexus instance"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the Nexus instance will be launched"
  type        = string
}

variable "nexus_ami_id" {
  description = "The AMI ID for the Nexus instance"
  type        = string
}

variable "jenkins_ami_id" {
  description = "The AMI ID for the Nexus instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the Nexus instance"
  type        = string
}
