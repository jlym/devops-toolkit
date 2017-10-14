provider "aws" {
  region = "us-west-2"
}

module "instance_1" {
  source        = "./docker-instance"
  instance_name = "Devops Toolkit 1"
}

module "instance_2" {
  source        = "./docker-instance"
  instance_name = "Devops Toolkit 2"
}

module "instance_3" {
  source        = "./docker-instance"
  instance_name = "Devops Toolkit 3"
}
