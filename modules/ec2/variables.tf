variable "ami_id" {
  description = "AMI ID for Windows instance"
  type        = any
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key pair name for EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}

variable "security_group_ids" {
  description = "The security group IDs for the EC2 instance"
  type        = list(string)
}

variable "instance_name" {
  description = "The name tag of the EC2 instance"
  type        = string
}

variable "user_data" {
  description = "User data script to run when the instance starts"
  type        = string
  default     = ""
}

variable "windows_server_name" {
  description = "The name of the Windows Server AMI to fetch"
  type        = any
  default     = "Windows_Server-2022-English-Full-Base"
}
