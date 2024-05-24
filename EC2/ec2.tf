resource "aws_instance" "test" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]
    tags = var.tags
}