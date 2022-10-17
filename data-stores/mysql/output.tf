
output "DB-Address" {
  value = aws_db_instance.DB.address
  description = "DB address"
}
output "DB-port-number" {
  value = aws_db_instance.DB.port
  description = "DB port number"
}
