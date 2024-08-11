provider "mycloud" {
  
  profile = "mac"
}

resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "Pratik-Module"
  }



  provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.public_ip} > public_ip.txt"
    
  }
}

  