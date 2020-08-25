resource "aws_db_subnet_group" "db_subnet_group" {
    name       = "main"
  subnet_ids = [var.public-subnet-1, var.private-subnet-1]

  tags = {
    Name = var.name_tag
  }
}

resource "aws_db_instance" "rds_instance" {
  identifier             = var.instance_name
  allocated_storage      = var.storage
  storage_type           = var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  name                   = var.instance_name
  username               = var.username
  password               = var.password
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids = var.private_sg_id
  skip_final_snapshot = var.skip_snapshot
}
