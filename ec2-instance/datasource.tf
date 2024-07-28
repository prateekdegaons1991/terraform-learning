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
  # The following lines are optional comments and docstrings.
  #
  # Retrieve the most recent Ubuntu Linux image from the AWS Marketplace.
  #
  # The `data` block is used to retrieve data from various sources. In this
  # case, we are retrieving data about an Amazon Machine Image (AMI) from
  # the AWS Marketplace.
  #
  # The `aws_ami` data source allows us to filter and retrieve specific AMIs
  # based on criteria such as the most recent image, the owner of the image,
  # and the name of the image.
  #
  # The `most_recent` attribute is set to `true`, which means that we want
  # the most recent image that matches the specified filters.
  #
  # The `owners` attribute is set to `["amazon"]`, which means that we want
  # the latest image that is owned by Amazon.
  #
  # The `filter` block is used to specify filters for the images. In this
  # case, we are filtering for the latest Ubuntu Focal (20.04) release with
  # the HVM virtualization type and SSD storage. The `name` attribute is set
  # to `"name"` and the `values` attribute is set to
  # `["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]`, which
  # means that we want the latest Ubuntu Focal (20.04) release with the HVM
  # virtualization type and SSD storage. The `*` is a wildcard that matches
  # any characters in the image name.
