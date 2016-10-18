resource "aws_security_group" "elb" {
  name        = "${var.tags["Environment"]}-${var.tags["Application"]}-${var.tags["Tier"]}-${var.name}-elb"
  description = "Security group for elb service"
  tags = "${var.tags}"
  vpc_id = "${var.vpc_id}"
}
