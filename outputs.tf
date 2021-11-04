// information output about below resources
output "vpcid" {
  value = aws_default_vpc.default.id
}

output "server-master-1-id" {
  value = aws_instance.ec2-ansible-master.id
}

output "server-master-1-ip" {
  value = aws_instance.ec2-ansible-master.public_ip
}

output "server-master-1-name" {
  value = aws_instance.ec2-ansible-master.tags_all
}

output "server-node-id" {
  value = aws_instance.ec2-ansible-node.id
}

output "server-node-ip" {
  value = aws_instance.ec2-ansible-node.public_ip
}

output "server-node-name" {
  value = aws_instance.ec2-ansible-node.tags_all
}