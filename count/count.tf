resource "aws_instance" "count" {
    count = 10
    ami = var.ami_id
    instance_type = var.instance_names[count.index]=="MongoDB" || var.instance_names[count.index]=="MySQL" ? "t2.micro" : "t2.micro"
    security_groups = [aws_security_group.allow_all.name]

}