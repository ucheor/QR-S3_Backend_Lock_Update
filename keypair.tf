resource "tls_private_key" "magnolia-key" {
  algorithm = "RSA"
  rsa_bits = 2048
}

resource "aws_key_pair" "magnolia-key-public" {
  key_name = var.key_name
  public_key = tls_private_key.magnolia-key.public_key_openssh
}

resource "local_file" "magnolia-key-private" {
  filename = "${var.key_name}.pem"
  file_permission = 700
  content = tls_private_key.magnolia-key.private_key_pem
}