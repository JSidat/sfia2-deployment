resource "aws_instance" "web_server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    subnet_id = var.public_subnet_id
    associate_public_ip_address = var.associate_public_ip_address
    user_data = data.template_file.installations.rendered
    
    tags = {
        Name = "Web_server"
}

}

data "template_file" "installations" {
  template = file("C:/Users/Junaid/OneDrive/QA academy/SFIA2_DEPLOYMENT/sfia2-deployment/sfia2-deployment/Terraform/EC2/installations.sh")
}   



 




resource "aws_instance" "worker" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.public_subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    associate_public_ip_address = true
    
  
    tags = {
        Name = "worker_EC2"
}

}





