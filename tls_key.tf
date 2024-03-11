resource "tls_private_key" "rsa-key" {

  algorithm = "RSA"
  rsa_bits  = 4096

}

resource "aws_key_pair" "ec2_key_pair" {
  key_name   = "ec2_key_pair"
  public_key = tls_private_key.rsa-key.public_key_openssh

}

resource "local_file" "ec2-key" {
  content  = tls_private_key.rsa-key.private_key_pem
  filename = "ec2_key_pair"
}
