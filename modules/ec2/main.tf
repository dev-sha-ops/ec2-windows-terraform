resource "aws_instance" "windows_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.instance_name
  }

  user_data = var.user_data
}
