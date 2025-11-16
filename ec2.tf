resource "aws_instance" "this" {
  ami           = var.ami_id # mandatory - check in variables
  instance_type = var.instance_type # mandatory - check in variables
  vpc_security_group_ids = var.sg_ids # mandatory check in variables
  tags = var.tags # optional - check in variables
}