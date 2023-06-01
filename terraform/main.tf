
resource "aws_instance" "ec2first" {
  ami           = "ami-08e5424edfe926b43"  # Replace with your desired AMI ID
  instance_type = "t2.micro"      # Replace with your desired instance type
  key_name      = "newawskeypair"   # Replace with your desired key pair name

  vpc_security_group_ids = ["sg-0f81a1704d229aabc"]  # Replace with your existing security group ID

  subnet_id = "subnet-0c1dad053c275f3e4"  # Replace with your existing subnet ID

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 30  # Replace with your desired volume size in GB
    delete_on_termination = true
}
  # Optional: Customize the instance tags
  tags = {
    Environment = "staging"
    Name = "${var.name}-server"
  }
}
