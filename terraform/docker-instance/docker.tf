variable "instance_name" {}

resource "aws_instance" "docker_instance" {
  ami                         = "ami-8e8796f7"
  instance_type               = "t2.medium"
  associate_public_ip_address = true

  security_groups = [
    "sg-1de02467",
  ]

  tags {
    Name = "${var.instance_name}"
  }
}

output "public_dns" {
  value = "${aws_instance.docker_instance.public_dns}"
}
