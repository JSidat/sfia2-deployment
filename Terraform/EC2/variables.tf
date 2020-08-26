variable "ami" {    
    default = "ami-07ee42ba0209b6d77"
    }

variable "instance_type" {
    default = "t2.micro"
    }

variable "key_name" {
    default = "new_key"
    }

variable "vpc_security_group_ids" {
    default = "default value"
    }

variable "public_subnet_id" {
    default = "default value"
    }

variable "private_subnet_id" {
    default = "default value"
    }

variable "associate_public_ip_address" {
    default = true
    }

variable "user_data" {
    description = "ami"
    default = data.template_file.installations.rendered


}

data "template_file" "installations" {
  template = file("C:/Users/Junaid/OneDrive/QA academy/SFIA2_DEPLOYMENT/sfia2-deployment/sfia2-deployment/Terraform/EC2/installations.sh")
}
