/*resource "aws_elb" "public_endpoint" {
  name                        = "${var.tags["Environment"]}-${var.tags["Application"]}-${var.tags["Tier"]}-${var.name}-SG"
  internal                    = false
  subnets                     = ["${var.subnets_ids}"]
  security_groups             = ["${aws_security_group.feature-sg-feature.id}"]
  instances                   = ["${aws_instance.feature-publishing-1.id}", "${aws_instance.feature-publishing-2.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  listener {
    instance_port      = 80
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:iam::054631451206:server-certificate/motdevenv-wildcard"
  }
  listener {
      instance_port      = 80
      instance_protocol  = "http"
      lb_port            = 80
      lb_protocol        = "http"
      ssl_certificate_id = ""
  }
  health_check {
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 10
    target              = "TCP:80"
    interval            = 30
  }
  tags {
    Name        = "${var.local["env"]}-publishing-internal-elb-http"
    project     = "${var.global["project"]}"
    environment = "${var.local["env"]}"
  }
}*/
