output "nexus_instance_id" {
  value       = aws_instance.nexus.id
  description = "The ID of the Nexus instance"
}

output "nexus_public_ip" {
  value       = aws_instance.nexus.public_ip
  description = "The public IP of the Nexus instance"
}
