resource "aws_security_group" "allow_all" {
    name = var.sg_name
    description = "allowing http,https,ssh ports" # you can keep this in variable

    dynamic "ingress" {
        for_each = var.ingress
        content {
        description      = "ingress.value[description]"
        from_port        = ingress.value.from_port # this is number
        to_port          = ingress.value.to_port
        protocol         = ingress.value.protocol
        cidr_blocks      = ingress.value.cidr_blocks
    }

    } 

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1" #all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }
}