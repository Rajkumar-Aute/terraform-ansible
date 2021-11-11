## The Terraform and Script files are used to build Ansible Master and Nodes,
* Add your **_ aws credentials to user/.aws/credentials _** file with profile name terraform
and create terraform ssh key in the AWS console.

* create new folder and clone the repository to local folder and run the terraform script,
```
git clone https://github.com/RajkumarAute/terraform-ansible.git
cd terraform-ansible
terraform init
terraform apply
```
* revise the creation statement then approve for apply process.

### after build
login into Master node and create user, (note - do not use default ubuntu user)
* create user "devops"
``` sudo adduser devops ```
* set password to the user
``` sudo passwd devops ```
* add sudo permission with no password
``` sudo visudo ```
* * update the below line in visudo file 
* * devops ALL=(ALL:ALL) NOPASSWD:ALL
* then create ssh key
``` ssh-keygen ```
  press enter for all options
* copy the ssh key to each of the nodes
``` ssh-copy-id devops@<ip-address-of-node> ```
* to test the connection
``` ssh <ip-address-of-node> ```
* * it should login without password