resource "aws_instance" "key_pair" {

    ami = var.ami
    instance_type = var.instance_type
    key_name = aws_key_pair.deployer.key_name
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/devops.pub")
}