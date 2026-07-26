output "bastion_my_public_ip" {
    value = aws_instance.bastion.public_ip
  
}

output "bastion_my_private_ip" {
    value = aws_instance.bastion.private_ip
  
}
