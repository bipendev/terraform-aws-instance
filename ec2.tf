resource "aws_instance" "this" {
  ami           = var.ami_id # mandatory - check in variables
  instance_type = var.instance_type # mandatory - check in variables
  vpc_security_group_ids = var.sg_ids # mandatory check in variables
  tags = var.tags # optional - check in variables

  user_data = <<-EOF
              sudo dnf -y install dnf-plugins-core
              sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
              sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo systemctl enable
              sudo usermod -aG docker ec2-user
              
}