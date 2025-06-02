provider "aws" {
    region = "ap-south-1"
}

module "vpc"{
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}

module "subnets" {
    source = "./modules/subnets"
    availability_zone = ["ap-south-1a","ap-south-1b"]
    Pub_cidr = ["10.0.1.0/24","10.0.2.0/24"]
    Pri_cidr = ["10.0.3.0/24","10.0.4.0/24"]
}

module "IGW" {
  source = "./modules/IGW"
  vpc_id = module.vpc.vpc_id
}

module "NAT" {
    source = "./modules/NAT"
}

module "Route_table" {
    source = "./modules/Route_table"
}

module "ec2" {
    source ="./modules/ec2"
    ami = "ami-0e35ddab05955cf57"
    instance = "t2.micro"
    security = ["Project-tom-jenkins"]
    key= "Project"
}





