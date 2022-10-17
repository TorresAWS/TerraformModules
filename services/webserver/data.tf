
data "terraform_remote_state" "db" {
	backend = "s3"

	config = {
		bucket = var.db_remote_state_bucket
		region = "us-east-1"
		key = var.db_remote_state_key
	}
}



data "template_file" "user_data" {
	template = file("${path.module}/user-data.sh")

	vars = {
		server_port	= var.http_port
		db-address	=	data.terraform_remote_state.db.outputs.DB-Address
		db-port			=	data.terraform_remote_state.db.outputs.DB-port-number
	}
}
