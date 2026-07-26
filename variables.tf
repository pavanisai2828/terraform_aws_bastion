variable "instance_type" {
    default = "t3.micro"
    type = string
    validation {
      condition = contains(["t3.micro","t3.small","t3.medium"], var.instance_type)
      error_message = "Instance type should be either t3.small or t3.micro"

}
}

variable "Project" {
  
}

variable "Environment" {
  
}

variable "bastion_tags" {
    default = {}
}