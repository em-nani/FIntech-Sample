FIntech-Sample

This is code base stores a cloudformation yaml template for each CI/CD server configuration.

To Run do the following:
npm install
npm run 

To activate mocha and chai for testing run 

npm install --save-dev mocha chai

Run terraform  no lock

terraform apply -lock=false

Ansible inline
- sudo apt-get update
- echo deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main > ansible.list
- sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
- sudo apt update
- sudo apt install ansible
- chmod 600 jenkins_nexus.pem
- scp -i /Users/michelle/downloads/jenkins_nexus.pem /Users/michelle/downloads/jenkins_nexus.pem ubuntu@ec2-54-235-9-222.compute-1.amazonaws.com:/tmp/

