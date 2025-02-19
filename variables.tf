variable "project_name" {
  
}

variable "environment" {
  
}

variable "vpc_cidr" {
  
}

variable "enable_dns_hostnames" {
   default = true
}

variable "common_tags" {
   type = map
   default = {}
}

variable "igw_tags" {
   default = {}
}

variable "public_subnet_cidrs" {
   type = list
   validation {
    condition     = length(var.public_subnet_cidrs)  == 2
    error_message = "please provide 2 public subnet cidr"
  }
  
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
   type = list
   validation {
    condition     = length(var.private_subnet_cidrs)  == 2
    error_message = "please provide 2 private subnet cidr"
  }
  
}

variable "private_subnet_tags" {
  default = {}
}


variable "database_subnet_cidrs" {
   type = list
   validation {
    condition     = length(var.database_subnet_cidrs)  == 2
    error_message = "please provide 2 database subnet cidr"
  }
  
}

variable "database_subnet_tags" {
  default = {}
}

variable "nat_gateway_tags" {
   default = {}
  
}

variable "public_route_table_tags" {
   default = {}
  
}

variable "private_route_table_tags" {
   default = {}
  
}

variable "database_route_table_tags" {
   default = {}
  
}