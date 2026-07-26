locals {
  ami_id= data.aws_ami.join_devops.id
  bastion_sg_id= data.aws_ssm_parameter.bastion_sg_id
  public_subnet_id=split(",",data.aws_ssm_parameter.public_subnet_ids.value)[0]

}

locals {
  common_tags={
    Project=var.Project
    Environment=var.Environment
    Terraform=true
    
  }
  common_name="${var.Project}-${var.Environment}"
}