data "aws_ami" "windows_server" {
  most_recent = true
  owners      = ["amazon"] # Only consider AMIs owned by Amazon
  filter {
    name   = "name"
    values = [var.windows_server_name]
  }

  filter {
    name   = "platform"
    values = ["windows"]
  }
  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "windows_instance" {
  ami                    = var.ami_id != null ? var.ami_id : data.aws_ami.windows_server.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids


  tags = {
    Name = var.instance_name
  }

  user_data = var.user_data
  depends_on = [ data.aws_ami.windows_server ]
}

