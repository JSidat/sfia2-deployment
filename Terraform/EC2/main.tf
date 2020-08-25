resource "aws_instance" "web_server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    subnet_id = var.public_subnet_id
    associate_public_ip_address = var.associate_public_ip_address
    user_data = var.user_data


tags = {
    Name = "Web_server"
}   

}



