resource "aws_instance" "frontend" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  key_name      = "ec2_key_pair"
  subnet_id     = aws_subnet.public_subnet_az1.id  # Update with your desired subnet ID
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.front_end_sg.id]
  tags = {
    Name = "Frontend Machine"
  }
}