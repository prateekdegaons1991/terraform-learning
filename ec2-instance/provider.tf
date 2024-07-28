terraform {
  required_version = "1.9.3"

}


provider "aws" {
  region  = var.region
  profile = "mac"
}
