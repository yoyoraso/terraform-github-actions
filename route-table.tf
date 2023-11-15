resource "aws_route_table" "example" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "yaya"
  }

  depends_on = [aws_vpc.my_vpc]
}