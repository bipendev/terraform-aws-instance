variable "ami_id" {

    type = string
    description = "This is the AMI created for the EC2 instance"

}

variable "insyance_type" {
    type = string
    description = "Instance type used for EC2 Instance"
    
}


variable "sg_ids" {
    type = list
}

# optional
variable "tags" {
    type = map
    default = {}
}