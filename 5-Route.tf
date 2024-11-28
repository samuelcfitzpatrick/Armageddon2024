resource "aws_route_table" "private_saopaulo" {
  vpc_id = aws_vpc.saopauloapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.saopaulonat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_saopaulo" {
  vpc_id = aws_vpc.saopauloapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.saopauloigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-sa-east-1a" {
  subnet_id      = aws_subnet.private-sa-east-1a.id
  route_table_id = aws_route_table.private-sa-east-1a.id
}
resource "aws_route_table_association" "private-sa-east-1b" {
  subnet_id      = aws_subnet.private-sa-east-1b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-sa-east-1c" {
  subnet_id      = aws_subnet.private-sa-east-1c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-sa-east-1a" {
  subnet_id      = aws_subnet.public-sa-east-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-sa-east-1b" {
  subnet_id      = aws_subnet.public-sa-east-1b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-sa-east-1c" {
  subnet_id      = aws_subnet.public-sa-east-1c.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table" "private_tokyo" {
  vpc_id = aws_vpc.tokyoapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.tokyonat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

#tokyo

resource "aws_route_table" "public_tokyo" {
  vpc_id = aws_vpc.tokyoapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyoigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-northeast-1a" {
  subnet_id      = aws_subnet.private-ap-northeast-1a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-ap-northeast-1c" {
  subnet_id      = aws_subnet.private-ap-northeast-1b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-ap-northeast-1d" {
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-ap-northeast-1a" {
  subnet_id      = aws_subnet.public-ap-northeast-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-ap-northeast-1c" {
  subnet_id      = aws_subnet.public-ap-northeast-1b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-ap-northeast-1d" {
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.public.id
}
#london
resource "aws_route_table" "private_london" {
  vpc_id = aws_vpc.londonapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.londonnat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_london" {
  vpc_id = aws_vpc.londonapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.londonigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-eu-west-2a" {
  subnet_id      = aws_subnet.private-eu-west-2a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-eu-west-2b" {
  subnet_id      = aws_subnet.private-eu-west-2b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-eu-west-2c" {
  subnet_id      = aws_subnet.private-eu-west-2c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-eu-west-2a" {
  subnet_id      = aws_subnet.public-eu-west-2a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-eu-west-2b" {
  subnet_id      = aws_subnet.public-eu-west-2b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-eu-west-2c" {
  subnet_id      = aws_subnet.public-eu-west-2c.id
  route_table_id = aws_route_table.public.id
}

#newyork

resource "aws_route_table" "private_newyork" {
  vpc_id = aws_vpc.newyorkapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.newyorknat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_newyork" {
  vpc_id = aws_vpc.newyorkapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.newyorkigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-us-east-1a" {
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-us-east-1b" {
  subnet_id      = aws_subnet.private-us-east-1b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-us-east-1c" {
  subnet_id      = aws_subnet.private-us-east-1c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-us-east-1a" {
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-us-east-1c" {
  subnet_id      = aws_subnet.public-us-east-1c.id
  route_table_id = aws_route_table.public.id
}

#ncalifornia

resource "aws_route_table" "private_Ncalifornia" {
  vpc_id = aws_vpc.Ncaliforniaapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.Ncalifornianat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_Ncalifornia" {
  vpc_id = aws_vpc.Ncaliforniaapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.Ncaliforniaigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-us-west-1a" {
  subnet_id      = aws_subnet.private-us-west-1a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-us-west-1b" {
  subnet_id      = aws_subnet.private-us-west-1b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-us-west-1c" {
  subnet_id      = aws_subnet.private-us-west-1c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-us-west-1a" {
  subnet_id      = aws_subnet.public-us-west-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-us-west-1b" {
  subnet_id      = aws_subnet.public-us-west-1b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-us-west-1c" {
  subnet_id      = aws_subnet.public-us-west-1c.id
  route_table_id = aws_route_table.public.id
}

#hongkong

resource "aws_route_table" "private_hongkong" {
  vpc_id = aws_vpc.hongkongapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.hongkongnat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_hongkong" {
  vpc_id = aws_vpc.hongkongapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.hongkongigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-east-1a" {
  subnet_id      = aws_subnet.private-ap-east-1a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-ap-east-1b" {
  subnet_id      = aws_subnet.private-ap-east-1b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-ap-east-1c" {
  subnet_id      = aws_subnet.private-ap-east-1c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-ap-east-1a" {
  subnet_id      = aws_subnet.public-ap-east-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-ap-east-1b" {
  subnet_id      = aws_subnet.public-ap-east-1b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-ap-east-1c" {
  subnet_id      = aws_subnet.public-ap-east-1c.id
  route_table_id = aws_route_table.public.id
}

#sydney

resource "aws_route_table" "private_sydney" {
  vpc_id = aws_vpc.sydneyapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.sydneynat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public_sydney" {
  vpc_id = aws_vpc.sydneyapp1.id
  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.sydneyigw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]
  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private-ap-southeast-2a" {
  subnet_id      = aws_subnet.private-ap-southeast-2a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-ap-southeast-2b" {
  subnet_id      = aws_subnet.private-ap-southeast-2b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-ap-southeast-2c" {
  subnet_id      = aws_subnet.private-ap-southeast-2c.id
  route_table_id = aws_route_table.private.id
}

#public
resource "aws_route_table_association" "public-ap-southeast-2a" {
  subnet_id      = aws_subnet.public-ap-southeast-2a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-ap-southeast-2b" {
  subnet_id      = aws_subnet.public-ap-southeast-2b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-ap-southeast-2c" {
  subnet_id      = aws_subnet.public-ap-southeast-2c.id
  route_table_id = aws_route_table.public.id
}
