variable "ami_id" {

    type = string
    default = "ami-0f3c7d07486cad139"

}

variable "instance_names" {

  type = list
  default = ["MongoDB", "Cart", "Catalogue", "User" , "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web"]
  
  }

  variable "sg_name" {

    type = string
    default = "allow_all"

  }

  variable "sg_cidr" {

    type = list
    default = ["0.0.0.0/0"]
  }

  variable "hosted_zone_id" {

    type = string
    default = "Z029063828AFTJFDMY0C2"
  }

  variable "domain" {

    type = string
    default = "devopspractice.site"

  }