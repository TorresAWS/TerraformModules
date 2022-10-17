#######################TF Partial backend###########################
terraform {
        backend "s3" {
        key = "services/webserver/terraform.tfstate"
        }
}
##################################################################
#########################PROVIDER CONFIGURATION###################
provider "aws" {
        shared_config_files      = ["/Users/daniel/.aws/config"]
        shared_credentials_files = ["/Users/daniel/.aws/credentials"]
        }
##################################################################






#######################security group#####################
resource "aws_security_group" "SG_Web_Instance" {
  name = "GS for web instance with all inbound TCP traffic allowed"
}

resource "aws_security_group_rule" "allow_http_inbound" {
  type              = "ingress"
  security_group_id = aws_security_group.SG_Web_Instance.id

  from_port         = var.http_port         #LOCAL
  to_port           = var.http_port         #LOCAL
  protocol          = var.TCP_protocol      #LOCAL
  cidr_blocks       = [var.CIDR_All_IPS]    #LOCAL
}
################################################################





#######################spin an instance#####################
 resource "aws_instance" "Instance" {
	ami                    = var.ami
	instance_type          = var.instance_type
	vpc_security_group_ids = [aws_security_group.SG_Web_Instance.id]
	user_data              = data.template_file.user_data.rendered
  tags = {
		Name                 = var.instance_tag
	}
 }
 ################################################################
