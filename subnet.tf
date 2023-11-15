resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "yaya"
  }

   depends_on = [aws_vpc.my_vpc]

}
