provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  tags = {
    Name = "New-Instance"
  }
}

terraform {
  backend "s3" {
    bucket = "tf12345"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
