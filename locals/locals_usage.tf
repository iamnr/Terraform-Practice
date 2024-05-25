resource "aws_instance" "locals" {
    ami = local.ami_id
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = local.public_key
}