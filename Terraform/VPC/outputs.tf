output "vpc" {
    value = aws_vpc.main.id
}

output "public_subnet" {
    value = aws_subnet.public-subnet-1.id
}

output "private_subnet" {
    value = aws_subnet.private-subnet-1.id
}

