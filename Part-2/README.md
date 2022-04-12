A key pair is used to control login access to EC2 instances. A connnection block will be used to access the remote resource https://www.terraform.io/language/resources/provisioners/connection

File provisioners are used to copy files or directories from the machine executing Terraform to newly created resources.
https://www.terraform.io/language/resources/provisioners/file

Remote-Exec Provisioner invokes a script on the resource after its created. This will be used to install ansible and run the ansible playbook. 

Part – 2

    Write a Terraform script which create a (or amazon linux) ec2-instance and copy a ansible playbook, install ansible and run it.

    Step 1 – Create ec2-instance with key and group

    Step 2 – Copy playbook using file terraform provisioner

    Step 3 – Install Ansible using remote terraform provisioner

    Step 4 – Run Ansible playbook command using remote terraform provisioner