variable "instance_type" {
  type    = string
  default = "t2.micro"

}

variable "env" {
  type    = string
  default = "development"
}

variable "region" {
  type    = string
  default = "eu-central-1"

}

variable "ami" {
  type = map(any)
  default = {
    development = "ami-06afbb13d6297d18a",
    production  = "ami-06afbb13d6297d18a"
  }
}

variable "security_groups" {
  type = list(any)
}

variable "dev_users" {
  type    = list(string)
  default = ["pratik", "eshita"]
}