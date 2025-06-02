resource "aws_subnet" "Public_Subnet" {
    count = length(var.Pub_cidr)
    vpc_id = aws_vpc.Project.id
    cidr_block = var.Pub_cidr[count.index]
    availability_zone = var.availability_zone[count.index]
    map_public_ip_on_launch = true
    tags = {
        Name = "Public_Subnet-${count.index + 1}"
    }
}

resource "aws_subnet" "Private_Subnet" {
    count = length(var.Pri_cidr)
    vpc_id = aws_vpc.Project.id
    availability_zone = var.availability_zone[count.index]
    cidr_block = var.Pri_cidr[count.index]
    map_public_ip_on_launch =  false
    tags = {
        Name = "Private_Subnet-${count.index + 1}"
    }
}





