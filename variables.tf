variable "ami_id" {

    type = string
    description = "This is the AMI created for the EC2 instance"
    default = "ami-09c813fb71547fc4f"

}

variable "instance_type" {
    type = string
    description = "Instance type used for EC2 Instance"
    validation {
        condition = contains (["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "please selct either t3 micro or small or medium"
    }
    
}


variable "sg_ids" {
    type = list
}

# optional
variable "tags" {
    type = map
    default = {}
}