## The Terraform and Script files are used to build Ansible Master and Nodes,
* Add your **_ aws credentials to user/.aws/credentials _** file with profile name terraform
and create terraform ssh key in the AWS console.

* create new folder and clone the repository to local folder and run the terraform script,
```
git clone https://github.com/RajkumarAute/terraform-ansible.git .
terraform init
terraform apply
```
* revise the creation statement then approve for apply process.

### after build
login into Master node
* create user "devops"
``` sudo useradd devops ```
* set password to the user
``` sudo passwd devops ```
* add sudo permission with no password
``` sudo visudo ```
* * update the line 
* * devops ALL=(ALL) NOPASSWD: ALL
* then create ssh key
  ``` ssh-keygen ```
  press enter for all options
* copy the ssh key to each of the nodes
``` ssh-copy-id devops@<ipaddress-of-node> ```
* to test the connection
``` ssh <ipaddress-of-node> ```
* * it should login without password


useradd devops # creating user devops and password is devops, can be updated in the script.
echo $user:devops | chpasswd  # it will set password as "devops" for user, password can be updated in thee script.
echo '$user ALL=(ALL:ALL) ALL' | sudo EDITOR='tee -a' visudo
