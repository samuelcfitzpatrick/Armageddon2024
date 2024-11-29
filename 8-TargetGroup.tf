#saopaulo
resource "aws_lb_target_group" "saopaulo-tg-80" {
  name     = "saopaulo-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.saopauloapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "saopauloTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "saopaulo1"
  }
}
resource "aws_lb_target_group" "saopaulo-tg-443" {
  name     = "saopaulo-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.saopauloapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "saopaulo-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "saopaulo2"
  }
}

resource "aws_lb_target_group" "saopaulo-tg-514" {
  name     = "saopaulo-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.saopauloapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "saopaulo-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "saopaulo3"
  }
}

#tokyo
resource "aws_lb_target_group" "tokyo-tg-80" {
  name     = "tokyo-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.tokyoapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "tokyoTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "tokyo1"
  }
}
resource "aws_lb_target_group" "tokyo-tg-443" {
  name     = "tokyo-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.tokyoapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "tokyo-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "tokyo2"
  }
}

resource "aws_lb_target_group" "tokyo-tg-514" {
  name     = "tokyo-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.tokyoapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "tokyo-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "tokyo3"
  }
}

#london 80 443 514

resource "aws_lb_target_group" "london-tg-80" {
  name     = "london-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.londonapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "londonTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "london1"
  }
}
resource "aws_lb_target_group" "london-tg-443" {
  name     = "london-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.londonapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "london-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "london2"
  }
}

resource "aws_lb_target_group" "london-tg-514" {
  name     = "london-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.londonapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "london-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "london3"
  }
}

#Newyork 80 443 514

resource "aws_lb_target_group" "newyork-tg-80" {
  name     = "newyork-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.newyorkapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "newyorkTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "newyork1"
  }
}
resource "aws_lb_target_group" "newyork-tg-443" {
  name     = "newyork-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.newyorkapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "newyork-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "newyork2"
  }
}

resource "aws_lb_target_group" "newyork-tg-514" {
  name     = "newyork-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.newyorkapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "newyork-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "newyork3"
  }
}

#Sydney 80 443 514

resource "aws_lb_target_group" "sydney-tg-80" {
  name     = "sydney-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.sydneyapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "sydneyTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "sydney1"
  }
}
resource "aws_lb_target_group" "sydney-tg-443" {
  name     = "sydney-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.sydneyapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "sydney-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "sydney2"
  }
}

resource "aws_lb_target_group" "sydney-tg-514" {
  name     = "sydney-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.sydneyapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "sydney-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "sydney3"
  }
}

#Ncalifornia 80 443 514 

resource "aws_lb_target_group" "Ncalifornia-tg-80" {
  name     = "Ncalifornia-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Ncaliforniaapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "NcaliforniaTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "Ncalifornia1"
  }
}
resource "aws_lb_target_group" "Ncalifornia-tg-443" {
  name     = "Ncalifornia-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Ncaliforniaapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "Ncalifornia-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "Ncalifornia2"
  }
}

resource "aws_lb_target_group" "Ncalifornia-tg-514" {
  name     = "Ncalifornia-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Ncaliforniaapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "Ncalifornia-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "Ncalifornia3"
  }
}

#hongkong 80 443 514

resource "aws_lb_target_group" "hongkong-tg-80" {
  name     = "hongkong-tg-80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.hongkongapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "hongkongTargetGroup"
    Service = "TG"
    Owner   = "Nealy"
    Project = "hongkong1"
  }
}
resource "aws_lb_target_group" "hongkong-tg-443" {
  name     = "hongkong-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.hongkongapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "hongkong-tg-443"
    Service = "TG"
    Owner   = "Nealy"
    Project = "hongkong2"
  }
}

resource "aws_lb_target_group" "hongkong-tg-514" {
  name     = "hongkong-tg-514"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.hongkongapp1.id
  target_type = "instance"
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }
  tags = {
    Name    = "hongkong-tg-514"
    Service = "TG"
    Owner   = "Nealy"
    Project = "hongkong3"
  }
}