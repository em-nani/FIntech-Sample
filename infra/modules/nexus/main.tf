resource "aws_instance" "nexus" {
  ami           = var.nexus_ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  # provisioner "remote-exec" {
  #   connection {
  #   type     = "ssh"
  #   user     = "ec2-user"
  #   private_key = "${file("~/downloads/jenkins_nexus.pem")}"
  #   host     = "${aws_instance.nexus.public_ip}"
  #   }

  #   inline = [
  #     "sudo ansible-playbook -i ansible_inventory.ini infra/nexus_playbook.yml",
  #   ]
  # }

  vpc_security_group_ids = [aws_security_group.nexus_sg.id]

  tags = {
    Name = "Nexus"
  }
}


resource "aws_security_group" "nexus_sg" {
  name        = "nexus_sg"
  description = "Security group for Nexus server"

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
