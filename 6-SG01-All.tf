#saopaulo

resource "aws_security_group" "saopaulo-sg01-servers" {
  name        = "saopaulo-sg01-servers"
  description = "saopaulo-sg01-servers"
  vpc_id      = aws_vpc.saopauloapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "saopaulo-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "saopaulo-sg02-LB01" {
  name        = "saopaulo-sg02-LB01"
  description = "saopaulo-sg02-LB01"
  vpc_id      = aws_vpc.saopauloapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "saopaulo-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "saopaulo-sg03-secure-servers" {
  name        = "saopaulo-sg03-secure-servers"
  description = "saopaulo-sg03-secure-servers"
  vpc_id      = aws_vpc.saopauloapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "saopaulo-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "saopaulo-sg04-secure-servers" {
  name        = "saopaulo-sg04-secure-servers"
  description = "saopaulo-sg04-secure-servers"
  vpc_id      = aws_vpc.saopauloapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "saopaulo-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#tokyo

resource "aws_security_group" "tokyo-sg01-servers" {
  name        = "tokyo-sg01-servers"
  description = "tokyo-sg01-servers"
  vpc_id      = aws_vpc.tokyoapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "tokyo-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "tokyo-sg02-LB01" {
  name        = "tokyo-sg02-LB01"
  description = "tokyo-sg02-LB01"
  vpc_id      = aws_vpc.tokyoapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "tokyo-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "tokyo-sg03-secure-servers" {
  name        = "tokyo-sg03-secure-servers"
  description = "tokyo-sg03-secure-servers"
  vpc_id      = aws_vpc.tokyoapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "tokyo-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "tokyo-sg04-secure-servers" {
  name        = "tokyo-sg04-secure-servers"
  description = "tokyo-sg04-secure-servers"
  vpc_id      = aws_vpc.tokyoapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "tokyo-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#london

resource "aws_security_group" "london-sg01-servers" {
  name        = "london-sg01-servers"
  description = "london-sg01-servers"
  vpc_id      = aws_vpc.londonapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "london-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "london-sg02-LB01" {
  name        = "london-sg02-LB01"
  description = "london-sg02-LB01"
  vpc_id      = aws_vpc.londonapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "london-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "london-sg03-secure-servers" {
  name        = "london-sg03-secure-servers"
  description = "london-sg03-secure-servers"
  vpc_id      = aws_vpc.londonapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "london-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "london-sg04-secure-servers" {
  name        = "london-sg04-secure-servers"
  description = "london-sg04-secure-servers"
  vpc_id      = aws_vpc.londonapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "london-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#newyork

resource "aws_security_group" "newyork-sg01-servers" {
  name        = "newyork-sg01-servers"
  description = "newyork-sg01-servers"
  vpc_id      = aws_vpc.newyorkapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "newyork-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "newyork-sg02-LB01" {
  name        = "newyork-sg02-LB01"
  description = "newyork-sg02-LB01"
  vpc_id      = aws_vpc.newyorkapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "newyork-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "newyork-sg03-secure-servers" {
  name        = "newyork-sg03-secure-servers"
  description = "newyork-sg03-secure-servers"
  vpc_id      = aws_vpc.newyorkapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "newyork-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "newyork-sg04-secure-servers" {
  name        = "newyork-sg04-secure-servers"
  description = "newyork-sg04-secure-servers"
  vpc_id      = aws_vpc.newyorkapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "newyork-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#sydney

resource "aws_security_group" "sydney-sg01-servers" {
  name        = "sydney-sg01-servers"
  description = "sydney-sg01-servers"
  vpc_id      = aws_vpc.sydneyapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "sydney-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "sydney-sg02-LB01" {
  name        = "sydney-sg02-LB01"
  description = "sydney-sg02-LB01"
  vpc_id      = aws_vpc.sydneyapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "sydney-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "sydney-sg03-secure-servers" {
  name        = "sydney-sg03-secure-servers"
  description = "sydney-sg03-secure-servers"
  vpc_id      = aws_vpc.sydneyapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "sydney-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "sydney-sg04-secure-servers" {
  name        = "sydney-sg04-secure-servers"
  description = "sydney-sg04-secure-servers"
  vpc_id      = aws_vpc.sydneyapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "sydney-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#Ncalifornia

resource "aws_security_group" "Ncalifornia-sg01-servers" {
  name        = "Ncalifornia-sg01-servers"
  description = "Ncalifornia-sg01-servers"
  vpc_id      = aws_vpc.Ncaliforniaapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "Ncalifornia-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "Ncalifornia-sg02-LB01" {
  name        = "Ncalifornia-sg02-LB01"
  description = "Ncalifornia-sg02-LB01"
  vpc_id      = aws_vpc.Ncaliforniaapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "Ncalifornia-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "Ncalifornia-sg03-secure-servers" {
  name        = "Ncalifornia-sg03-secure-servers"
  description = "Ncalifornia-sg03-secure-servers"
  vpc_id      = aws_vpc.Ncaliforniaapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "Ncalifornia-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "Ncalifornia-sg04-secure-servers" {
  name        = "Ncalifornia-sg04-secure-servers"
  description = "Ncalifornia-sg04-secure-servers"
  vpc_id      = aws_vpc.Ncaliforniaapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "Ncalifornia-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#hongkong

resource "aws_security_group" "hongkong-sg01-servers" {
  name        = "hongkong-sg01-servers"
  description = "hongkong-sg01-servers"
  vpc_id      = aws_vpc.hongkongapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "hongkong-sg01-servers"
    Service = "SG1"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "hongkong-sg02-LB01" {
  name        = "hongkong-sg02-LB01"
  description = "hongkong-sg02-LB01"
  vpc_id      = aws_vpc.hongkongapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "hongkong-sg02-LB01"
    Service = "SG2"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "hongkong-sg03-secure-servers" {
  name        = "hongkong-sg03-secure-servers"
  description = "hongkong-sg03-secure-servers"
  vpc_id      = aws_vpc.hongkongapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "hongkong-sg03-secure-servers"
    Service = "SG3"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_security_group" "hongkong-sg04-secure-servers" {
  name        = "hongkong-sg04-secure-servers"
  description = "hongkong-sg04-secure-servers"
  vpc_id      = aws_vpc.hongkongapp1.id
  ingress {
    description = "MyHomePage"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "hongkong-sg04-secure-servers"
    Service = "SG4"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}