resource "aws_lb" "saopaulo_alb" {
  name               = "saopaulo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.saopaulo-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-sa-east-1a.id,
    aws_subnet.public-sa-east-1b.id,
    aws_subnet.public-sa-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "saopauloLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "saopaulo"
  }
}
resource "aws_lb_listener" "http_saopaulo" {
  load_balancer_arn = aws_lb.saopaulo_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.saopaulo-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_saopaulo" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_saopaulo" {
  load_balancer_arn = aws_lb.saopaulo_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.saopaulo-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_saopaulo" {
  load_balancer_arn = aws_lb.saopaulo_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.saopaulo-tg-514.arn
  }
}


output "lb_dns_name" {
  value       = aws_lb.saopaulo_alb.dns_name
  description = "The DNS name of the saopaulo Load Balancer."
}

#tokyo

resource "aws_lb" "tokyo_alb" {
  name               = "tokyo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.tokyo-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-northeast-1a.id,
    aws_subnet.public-ap-northeast-1c.id,
    aws_subnet.public-ap-northeast-1d.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "tokyoLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "tokyo"
  }
}
resource "aws_lb_listener" "http_tokyo" {
  load_balancer_arn = aws_lb.tokyo_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tokyo-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_tokyo" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_tokyo" {
  load_balancer_arn = aws_lb.tokyo_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.tokyo-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_tokyo" {
  load_balancer_arn = aws_lb.tokyo_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tokyo-tg-514.arn
  }
}


output "lb_dns_name_tokyo" {
  value       = aws_lb.tokyo_alb.dns_name
  description = "The DNS name of the tokyo Load Balancer."
}

#london

resource "aws_lb" "london_alb" {
  name               = "london-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.london-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-eu-west-2a.id,
    aws_subnet.public-eu-west-2b.id,
    aws_subnet.public-eu-west-2c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "londonLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "london"
  }
}
resource "aws_lb_listener" "http_london" {
  load_balancer_arn = aws_lb.london_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.london-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_london" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_london" {
  load_balancer_arn = aws_lb.london_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.london-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_london" {
  load_balancer_arn = aws_lb.london_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.london-tg-514.arn
  }
}


output "lb_dns_name_london" {
  value       = aws_lb.london_alb.dns_name
  description = "The DNS name of the london Load Balancer."
}

#Newyork

resource "aws_lb" "newyork_alb" {
  name               = "newyork-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.newyork-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1b.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "newyorkLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "newyork"
  }
}
resource "aws_lb_listener" "http_newyork" {
  load_balancer_arn = aws_lb.newyork_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.newyork-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_newyork" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_newyork" {
  load_balancer_arn = aws_lb.newyork_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.newyork-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_newyork" {
  load_balancer_arn = aws_lb.newyork_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.newyork-tg-514.arn
  }
}


output "lb_dns_name_newyork" {
  value       = aws_lb.newyork_alb.dns_name
  description = "The DNS name of the newyork Load Balancer."
}

#sydney

resource "aws_lb" "sydney_alb" {
  name               = "sydney-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sydney-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-southeast-2a.id,
    aws_subnet.public-ap-southeast-2b.id,
    aws_subnet.public-ap-southeast-2c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "sydneyLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "sydney"
  }
}
resource "aws_lb_listener" "http_sydney" {
  load_balancer_arn = aws_lb.sydney_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.sydney-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_sydney" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_sydney" {
  load_balancer_arn = aws_lb.sydney_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.sydney-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_sydney" {
  load_balancer_arn = aws_lb.sydney_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.sydney-tg-514.arn
  }
}


output "lb_dns_name_sydney" {
  value       = aws_lb.sydney_alb.dns_name
  description = "The DNS name of the sydney Load Balancer."
}

#NCalifornia

resource "aws_lb" "Ncalifornia_alb" {
  name               = "Ncalifornia-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.Ncalifornia-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1a.id,
    aws_subnet.public-us-west-1b.id,
    aws_subnet.public-us-west-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "NcaliforniaLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "Ncalifornia"
  }
}
resource "aws_lb_listener" "http_Ncalifornia" {
  load_balancer_arn = aws_lb.Ncalifornia_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Ncalifornia-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_Ncalifornia" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_Ncalifornia" {
  load_balancer_arn = aws_lb.Ncalifornia_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.Ncalifornia-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_Ncalifornia" {
  load_balancer_arn = aws_lb.Ncalifornia_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Ncalifornia-tg-514.arn
  }
}


output "lb_dns_name_Ncalifornia" {
  value       = aws_lb.Ncalifornia_alb.dns_name
  description = "The DNS name of the Ncalifornia Load Balancer."
}

#Hongkong

resource "aws_lb" "Hongkong_alb" {
  name               = "Hongkong-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.Hongkong-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-east-1a.id,
    aws_subnet.public-ap-east-1b.id,
    aws_subnet.public-ap-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false
  tags = {
    Name    = "HongkongLoadBalancer"
    Service = "LoadBalancer"
    Owner   = "Nealy"
    Project = "Hongkong"
  }
}
resource "aws_lb_listener" "http_hongkong" {
  load_balancer_arn = aws_lb.Hongkong_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Hongkong-tg-80.arn
  }
}
data "aws_acm_certificate" "cert_Hongkong" {
  domain = "samcloudprojects.com"
  statuses = ["ISSUED"]
  most_recent = true
}
resource "aws_lb_listener" "https_hongkong" {
  load_balancer_arn = aws_lb.Hongkong_alb.arn 
  port = 443 
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = data.aws_acm_certificate.cert.arn
  

default_action {
  type = "forward"
  target_group_arn = aws_lb_target_group.Hongkong-tg-443.arn
 }
}


resource "aws_lb_listener" "udp_hongkong" {
  load_balancer_arn = aws_lb.Hongkong_alb.arn
  port              = 514
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.Hongkong-tg-514.arn
  }
}


output "lb_dns_name_hongkong" {
  value       = aws_lb.Hongkong_alb.dns_name
  description = "The DNS name of the Hongkong Load Balancer."
}