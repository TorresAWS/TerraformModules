data "aws_secretsmanager_secret_version" "DB-password" {
	secret_id = "FileFunctionAndRemoteStateDB"
}
