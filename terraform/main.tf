provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "docker_instance" {
  ami                         = "ami-8e8796f7"
  instance_type               = "t2.medium"
  associate_public_ip_address = true
  key_name                    = "macbook pro 13"

  count = 3
  security_groups = [
    "docker",
  ]

  tags {
    Name = "Devops Toolkit ${count.index}"
  }
}
 output "test" {
   value = "${aws_instance.docker_instance.public_dns}"
 }