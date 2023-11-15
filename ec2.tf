resource "aws_instance" "yaya" {
  ami                     = "ami-0669b163befffbdfc"
  instance_type           = "t2.micro"
  availability_zone       = "eu-central-1a" 
  associate_public_ip_address = true
  key_name = aws_key_pair.deployer.id
  security_groups = aws_security_group.web_sg.id
  subnet_id = aws_subnet.my_subnet.id

  tags = {
    Name = "yaya"
  }

   depends_on = [aws_key_pair.deployer,aws_security_group.web_sg,aws_subnet.my_subnet]

}
