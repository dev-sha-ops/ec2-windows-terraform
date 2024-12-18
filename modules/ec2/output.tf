output "ec2" {
 value = aws_instance.windows_instance
}
output "ami" {
 value = data.aws_ami.windows_server.id 
}