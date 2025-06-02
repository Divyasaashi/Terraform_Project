resource "aws_eip" "Elastic_Ip" {
    domain = "vpc"
    tags = {
      Name = "Elastic_Ip_Project"
    }
}

resource "aws_nat_gateway" "NAT" {
    allocation_id = aws_eip.Elastic_Ip.id
    subnet_id = aws_subnet.Public_Subnet[0].id
    tags = {
        Name = "NAT_Project"
    }
}
