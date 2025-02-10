provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "demo-server" {
    ami = "ami-0e82046e2f06c0a68"
    instance_type = "t2.micro"
    key_name = "ireland"


}

