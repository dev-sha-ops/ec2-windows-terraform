aws_region = "us-east-1"
ec2 = {
  Server-2022 = {
    windows_server_name = "Windows_Server-2022-English-Full-Base-2024.10.09"
    ami_id = null #"ami-21313414212" #Either Put windows_server_name or AMI
    instance_type       = "t3a.small"
    subnet_id           = "subnet-d2d24d9b"
    key_name            = "WaggsAI"
    security_group_ids  = ["sg-0c752ba557f1a5174"]
    instance_name       = "windowserver2022"
    user_data = <<-EOT
    <powershell>
    </powershell>
    EOT
  }
}
