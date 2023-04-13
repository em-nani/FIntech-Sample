variable "key_name" {
  description = "The AWS key pair name for the Jenkins instance"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the Jenkins instance will be launched"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the Jenkins server"
  type        = string
  default     = "t2.micro"
}

variable "jenkins_ami_id" {
  description = "The ID of the ami for the Jenkins instance"
  type        = string
}