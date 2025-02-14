provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "demo-server" {
    ami = "ami-0e82046e2f06c0a68"
    instance_type = "t2.micro"
    key_name = "ireland"
    security_groups = [ "demo-sg" ]
}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "SSH Access"
  
  ingress {
    description      = "Shh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  tags = {
    Name = "ssh-prot"

  }
}