
provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
  count         = var.instancecount
  ami           = var.ami
  instance_type = var.instancetype
  tags          = var.tagsvariable
}