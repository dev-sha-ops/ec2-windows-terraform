aws_region         = "us-east-1"
ec2 = {
    Server-2022  = {

        windows_server_name = "Windows_Server-2022-English-Full-Base"
        instance_type      = "t2.micro"
        subnet_id          = "subnet-xyz"
        key_name           = "my-key"
        security_group_ids = ["sg-12345"]
        instance_name      = "MyWindowsInstance"
    }
}