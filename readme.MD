# AWS EC2 Instance

This module creates EC2 instance.

### Inputs

* ami_id - (Optional) Defaults to '''ami-09c813fb71547fc4f'''
* instance_type - (Required) user must supply either t3.micro or small or medium
* sg_ids - (Required) user must supply security group IDS to attach to  EC2 instance.
* tags (Optional) user can supply the tags to EC2 instance


###

* public_ip - public IP of the insatance created
* private_ip - private IP of the instance created

