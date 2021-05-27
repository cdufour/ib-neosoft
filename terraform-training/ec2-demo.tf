provider "aws" {
  # Configuration options
}

resource "aws_instance" "web" {
  ami           = "ami-0f7cd40eac2214b37" # image id ubuntu server 20.04 region Paris
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 Demo"
  }
}

