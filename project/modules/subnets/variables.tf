variable "Pub_cidr" {
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "Pri_cidr" {
  default = ["10.0.3.0/24","10.0.4.0/24"]
}

variable "availability_zone" {
  default = ["ap-south-1a", "ap-south-1b"]
}
