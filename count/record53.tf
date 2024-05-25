resource "aws_route53_record" "record" {

  count = 10
  zone_id = var.hosted_zone_id
  name    = "${var.instance_names[count.index]}.${var.domain}" #interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.count[count.index].private_ip]
}