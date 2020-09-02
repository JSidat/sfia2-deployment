variable "storage" {
  description = "Storage allocated to db"
  default     = "20"
}

variable "storage_type" {
  description = "gp2 (general purpose SSD) or io1 (provisioned IOPS SSD)"
  default     = "gp2"
}

variable "engine" {
  description = "database engine being used"
  default     = "mysql"
}

variable "engine_version" {
  description = "version of mysql being used"
  default     = "5.7"
}

variable "instance_class" {
  description = "instance type of RDS instance."
  default = "db.t2.micro"
}

variable "instance_name" {
  description = "Database name."
  default = "sfia2db"
}

variable "username" {
  description = "username for database"
}

variable "password" {
  description = "password for database"
}

variable "public-subnet-1" {
  description = "Subnet to be housed within."
  
}

variable "private-subnet-1" {
  description = "Subnet to be housed within."

}

variable "private_sg_id" {
  description = "VPC Security Group"
}

variable "skip_snapshot" {
  description = "Final Snapshot."
  default = true
}

variable "name_tag" {
  description = "Name of the RDS."
  default = "database"
}

