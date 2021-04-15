# Shorthillsassignment
1. Terraform code to create an AWS instance with a public IP address
2. And then write the Ansible playbook to install Apache on the new AWS instance.


1. Created a ec2 instance (Ubuntu 18.04.5 LTS ) with a public ip With terraform

Use (Requirements)
terraform version 	>= 0.13.8
aws                 >= 2.1



**Note**:  
**a.** I had configured aws{ #aws configure} ( to add Access Key and ID). Also may use under "provider" block 

  **access_key = "XXXXXXXXXX"
	secret_key = "XXXXXXXXXX+XXXX+XXXXX"**

**b.** I create this to launch in US East (Nort Virginia) with default vpc and security group. And default root_volume i.e 8 GB
If you need to add more than 8gb you can add this line under "resource" block 

root_block_device {
volume_type      = "standard"
volume_size      = 30
}
volume_tags {
Name = "name-instance"
}


2. Ansible playbook to install Apache on the new AWS instance
Use (Requirements)
EC2 -->      Ubuntu 18.04.5 LTS
ansible -->  2.9.20


**Note**: 

**a.** To run successfully this playbook: Need to access to new instance and you have to share ansible ssh_public_key with new ec2 instances (open port 22)
**b.** add the host under group of host in /etc/ansible/hosts.  (Here i added under webservers)





