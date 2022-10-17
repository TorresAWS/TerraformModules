 #######################Output variables#####################
 output "INSTANCE_ID" {
 value = "${aws_instance.Instance.public_ip}"
 description = "Prints the ID of the instance"
 }

 output "SG_ID" {
 value = "${aws_security_group.SG_Web_Instance.id}"
 description = "Prints the SG ID "
 }
 ################################################################
