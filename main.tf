provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami = "ami-0bc4327f3aabf5b71"
  instance_type = "t3.micro"
  
  tags = {
    Name = "terraform-example"
  }
}
