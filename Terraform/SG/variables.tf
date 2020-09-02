variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [80, 5000, 5001, 5002, 5003, 3306, 8080, 22]
}


variable "open-internet" {
    description     =   "CIDR block open to the internet"
    default         =   ["0.0.0.0/0"]
}

variable "outbound-port" {
    description     =   "Port open to allow outbound connection"
    default         =   "0"
}

variable "vpc_id" {
    description = "vpc id"
}


