locals {

    ami_id = "ami-0f3c7d07486cad139"
    instance_type = "t2.micro"
    public_key = file("${path.module}/devops.pub")

}