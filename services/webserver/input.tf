variable "http_port"	{   #LOCAL
description = "This is the port number for http connections"
type = number
default = 8080
}

variable "CIDR_All_IPS"	{#LOCAL
description = "This is CIDR for all IPs"
type = string
default = "0.0.0.0/0"
}

variable "TCP_protocol"	{#LOCAL
description = "This is tcp protocol"
type = string
default = "tcp"
}

variable "instance_tag"	{
description = "This is the instance tag"
type = string
default = "Terraform-Example"
}

variable "ami"	{
description = "This is the ami name"
type = string
default = "ami-0b0ea68c435eb488d"
}

variable "instance_type"	{
description = "This is the instance type"
type = string
default = "t2.micro"
}

variable "db_remote_state_bucket"	{
description = "This is the RS bucket name"
type = string
default = "managetfstate1022022"
}

variable "db_remote_state_key"	{
description = "This is the RS key name"
type = string
default = "data-store/mysql/terraform.tfstate"
}
