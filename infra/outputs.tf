output "jenkins_ip" {
  value = module.jenkins.public_ip
}

output "nexus_ip" {
  value = module.nexus.nexus_public_ip
}

