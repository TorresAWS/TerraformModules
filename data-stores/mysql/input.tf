
variable "db_name_tag" {
  type    = string
	default =  "mydb1"
}
variable "db_allocated_storage" {
  type    = number
	default =  10
}
variable "db_engine" {
  type    = string
	default =  "mysql"
}
variable "db_instance_class" {
  type    = string
	default =  "db.t3.micro"
}
