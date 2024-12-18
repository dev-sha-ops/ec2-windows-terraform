provider "aws" {
  region = var.aws_region
}


module "windows_ec2" {
  source              = "./modules/ec2"
  for_each            = var.ec2
  ami_id              = each.value.ami_id
  instance_type       = each.value.instance_type
  subnet_id           = each.value.subnet_id
  key_name            = each.value.key_name
  user_data           = each.value.user_data
  security_group_ids  = each.value.security_group_ids
  instance_name       = each.value.instance_name
  windows_server_name = each.value.windows_server_name
}
