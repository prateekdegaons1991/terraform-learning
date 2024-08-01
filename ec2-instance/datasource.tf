# This data source block retrieves the most recent Ubuntu Linux image
# from the AWS Marketplace. The image must be owned by Amazon and must
# match the specified filter. In this case, we are filtering for the
# latest Ubuntu Focal (20.04) release with the HVM (hardware virtualized)
# virtualization type and SSD storage.

data "aws_ami" "ubuntu" {
  # Specify that we want the most recent image
  most_recent = true

  # Filter the images by the owner (Amazon)
  owners = ["amazon"]

  # Filter the images by the name
  filter {
    # Filter for the name of the image
    name   = "name"

    # Filter for the latest Ubuntu Focal (20.04) release with the HVM
    # virtualization type and SSD storage
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}
  