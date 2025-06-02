resource "aws_internet_gateway" "IGW" {
    vpc_id = aws_vpc.Project.id
    tags = {
        Name = "IGW_Project"
    }
}
