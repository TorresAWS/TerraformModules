


#########################Deplot a DB###################
resource "aws_db_instance" "DB" {
	db_name              = var.db_name_tag
	allocated_storage    = var.db_allocated_storage
	engine               = var.db_engine
	instance_class       = var.db_instance_class
	username             = "admin"
	skip_final_snapshot  = true
	password             = "sJsm23Kjs"
# 	password             = data.aws_secretsmanager_secret_version.DB-password.secret_string
	}
	##################################################################
