variable "key_name" {
  description = "The AWS key pair name for the Nexus instance"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the Nexus instance will be launched"
  type        = string
}

variable "nexus_ami_id" {
  description = "The ID of the ami for the Nexus instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the Jenkins server"
  type        = string
  default     = "t2.micro"
}

# Keep the rest of the variables as they were before
