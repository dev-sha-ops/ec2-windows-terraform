provider "aws" {
  region = var.aws_region
}

data "aws_ami" "windows_server" {
  most_recent = true
  owners      = ["amazon"] # Only consider AMIs owned by Amazon
  filter {
    name   = "name"
    values = [var.windows_server_name]
  }
  filter {
    name   = "state"
    values = ["available"]
  }
}

module "windows_ec2" {
  source            = "./modules/ec2"
  ami_id            = data.aws_ami.windows_server.id # Dynamically fetched AMI ID
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  key_name          = var.key_name
  security_group_ids = var.security_group_ids
  instance_name     = var.instance_name
}
