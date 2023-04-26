resource "aws_instance" "jenkins" {
  ami           = var.jenkins_ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  #provisioner "remote-exec" {
    #connection {
  #   type     = "ssh"
  #   user     = "ec2-user"
  #   private_key = "${file("~/downloads/jenkins_nexus.pem")}"
  #   host     = "${aws_instance.jenkins.public_ip}"
  #   }

  #   inline = [
  #     "sudo ansible-playbook -i ansible_inventory.ini infra/jenkins_playbook.yml",
  #   ]
  # }

  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  tags = {
    Name = "Jenkins"
  }
}

resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins"
  description = "Jenkins security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
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


