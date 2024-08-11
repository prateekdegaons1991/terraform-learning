provider "aws" {
  
  region = "eu-central-1"
  profile = "mac"
}

resource "aws_instance" "myec2" {

    ami = data.aws_ami.ubuntu.image_id
    instance_type = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.myec2.public_ip} > public_ip.txt"
      
    }
  
}