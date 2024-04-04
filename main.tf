resource "aws_instance" "my_other_app_server" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"

  tags = {
    Name = "Example EC2 for demo from CLI"
  }
}
