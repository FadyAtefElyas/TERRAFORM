resource "aws_subnet" "public_subnet_az1" {
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_az1"
  }
}
resource "aws_subnet" "private_subnet" {
  cidr_block         = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  vpc_id            = aws_vpc.vpc1.id

  tags = {
    Name = "private_subnet"
  }
}
