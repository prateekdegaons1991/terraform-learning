provider "aws" {
    region  = "eu-central-1"
    profile = "mac"
}

resource "aws_instance" "myec2" {
  ami           = "ami-07652eda1fbad7432"
  instance_type = "t2.micro"
  tags = {
    Name = "Pratik-Module"
  }
}

  