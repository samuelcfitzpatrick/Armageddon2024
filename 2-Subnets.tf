#These are   for  public
#Tokyo

  resource "aws_subnet" "public-ap-northeast-1a" {
    vpc_id                  = aws_vpc.tokyoapp1.id
    cidr_block              = "10.70.1.0/24"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-northeast-1a"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  resource "aws_subnet" "public-ap-northeast-1c" {
    vpc_id                  = aws_vpc.tokyoapp1.id
    cidr_block              = "10.70.3.0/24"
    availability_zone       = "ap-northeast-1c"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-northeast-1c"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }

  resource "aws_subnet" "public-ap-northeast-1d" {
    vpc_id                  = aws_vpc.tokyoapp1.id
    cidr_block              = "10.70.4.0/24"
    availability_zone       = "ap-northeast-1d"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-northeast-1d"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  #these are for private
  resource "aws_subnet" "private-ap-northeast-1a" {
    vpc_id            = aws_vpc.tokyoapp1.id
    cidr_block        = "10.70.11.0/24"
    availability_zone = "ap-northeast-1a"
    tags = {
      Name    = "private-ap-northeast-1a"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  resource "aws_subnet" "private-ap-northeast-1c" {
    vpc_id            = aws_vpc.tokyoapp1.id
    cidr_block        = "10.70.13.0/24"
    availability_zone = "ap-northeast-1c"
    tags = {
      Name    = "private-ap-northeast-1c"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }

  resource "aws_subnet" "private-ap-northeast-1d" {
    vpc_id            = aws_vpc.tokyoapp1.id
    cidr_block        = "10.70.14.0/24"
    availability_zone = "ap-northeast-1d"
    tags = {
      Name    = "private-ap-northeast-1d"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
 
#london

  resource "aws_subnet" "public-eu-west-2a" {
    vpc_id                  = aws_vpc.londonapp1.id
    cidr_block              = "10.71.1.0/24"
    availability_zone       = "eu-west-2a"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-eu-west-2a"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  resource "aws_subnet" "public-eu-west-2b" {
    vpc_id                  = aws_vpc.londonapp1.id
    cidr_block              = "10.71.2.0/24"
    availability_zone       = "eu-west-2b"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-eu-west-2b"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }

  resource "aws_subnet" "public-eu-west-2c" {
    vpc_id                  = aws_vpc.londonapp1.id
    cidr_block              = "10.71.3.0/24"
    availability_zone       = "eu-west-2c"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-eu-west-2c"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  #these are for private
  resource "aws_subnet" "private-eu-west-2a" {
    vpc_id            = aws_vpc.londonapp1.id
    cidr_block        = "10.71.11.0/24"
    availability_zone = "eu-west-2a"
    tags = {
      Name    = "private-eu-west-2a"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  resource "aws_subnet" "private-eu-west-2b" {
    vpc_id            = aws_vpc.londonapp1.id
    cidr_block        = "10.71.12.0/24"
    availability_zone = "eu-west-2b"
    tags = {
      Name    = "private-eu-west-2b"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }

  resource "aws_subnet" "private-eu-west-2c" {
    vpc_id            = aws_vpc.londonapp1.id
    cidr_block        = "10.71.13.0/24"
    availability_zone = "eu-west-2c"
    tags = {
      Name    = "private-eu-west-2c"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  } 
#These are   for  public
#newyork

  resource "aws_subnet" "public-us-east-1a" {
    vpc_id                  = aws_vpc.newyorkapp1.id
    cidr_block              = "10.72.1.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-us-east-1a"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  resource "aws_subnet" "public-us-east-1b" {
    vpc_id                  = aws_vpc.newyorkapp1.id
    cidr_block              = "10.72.2.0/24"
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-us-east-1b"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }

  resource "aws_subnet" "public-us-east-1c" {
    vpc_id                  = aws_vpc.newyorkapp1.id
    cidr_block              = "10.72.3.0/24"
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-us-east-1c"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  #newyork
  resource "aws_subnet" "private-us-east-1a" {
    vpc_id            = aws_vpc.newyorkapp1.id
    cidr_block        = "10.72.11.0/24"
    availability_zone = "us-east-1a"
    tags = {
      Name    = "private-us-east-1a"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }
  resource "aws_subnet" "private-us-east-1b" {
    vpc_id            = aws_vpc.newyorkapp1.id
    cidr_block        = "10.72.12.0/24"
    availability_zone = "us-east-1b"
    tags = {
      Name    = "private-us-east-1b"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  }

  resource "aws_subnet" "private-us-east-1c" {
    vpc_id            = aws_vpc.newyorkapp1.id
    cidr_block        = "10.72.13.0/24"
    availability_zone = "us-east-1c"
    tags = {
      Name    = "private-us-east-1c"
      Service = "subnets"
      Owner   = "Nealy"
      Planet  = "Laconia"
    }
  } 
  #saopaulo 
resource "aws_subnet" "public-sa-east-1a" {
  vpc_id                  = aws_vpc.saopauloapp1.id
  cidr_block              = "10.73.1.0/24"
  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name    = "public-sa-east-1a"
    Service = "subnets"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
resource "aws_subnet" "public-sa-east-1b" {
  vpc_id                  = aws_vpc.saopauloapp1.id
  cidr_block              = "10.73.2.0/24"
  availability_zone       = "sa-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name    = "public-sa-east-1b"
    Service = "subnets"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_subnet" "public-sa-east-1c" {
  vpc_id                  = aws_vpc.saopauloapp1.id
  cidr_block              = "10.73.3.0/24"
  availability_zone       = "sa-east-1c"
  map_public_ip_on_launch = true
  tags = {
    Name    = "public-sa-east-1c"
    Service = "subnets"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#these are for private
resource "aws_subnet" "private-sa-east-1a" {
  vpc_id            = aws_vpc.saopauloapp1.id
  cidr_block        = "10.73.11.0/24"
  availability_zone = "sa-east-1a"
  tags = {
    Name    = "private-sa-east-1a"
    Service = "subnets"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
resource "aws_subnet" "private-sa-east-1b" {
  vpc_id            = aws_vpc.saopauloapp1.id
  cidr_block        = "10.73.12.0/24"
  availability_zone = "sa-east-1b"
  tags = {
    Name    = "private-sa-east-1b"
    Service = "subnets"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}

resource "aws_subnet" "private-sa-east-1c" {
  vpc_id            = aws_vpc.saopauloapp1.id
  cidr_block        = "10.73.13.0/24"
  availability_zone = "sa-east-1c"
  tags = {
    Name    = "private-sa-east-1c"
    Service = "subnets"
    Owner   = "Nealy"
    Planet  = "Laconia"
  }
}
#Ncaliforniaapp1
#These are   for  public
  resource "aws_subnet" "public-us-west-1a" {
    vpc_id                  = aws_vpc.Ncaliforniaapp1.id
    cidr_block              = "10.75.1.0/24"
    availability_zone       = "us-west-1a"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-us-west-1a"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "public-us-west-1b" {
    vpc_id                  = aws_vpc.Ncaliforniaapp1.id
    cidr_block              = "10.75.2.0/24"
    availability_zone       = "us-west-1b"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-us-west-1b"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "public-us-west-1c" {
    vpc_id                  = aws_vpc.Ncaliforniaapp1.id
    cidr_block              = "10.75.3.0/24"
    availability_zone       = "us-west-1c"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-us-west-1c"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
  #these are for private
  resource "aws_subnet" "private-us-west-1a" {
    vpc_id            = aws_vpc.Ncaliforniaapp1.id
    cidr_block        = "10.75.11.0/24"
    availability_zone = "us-west-1a"
    tags = {
      Name    = "private-us-west-1a"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "private-us-west-1b" {
    vpc_id            = aws_vpc.Ncaliforniaapp1.id
    cidr_block        = "10.75.12.0/24"
    availability_zone = "us-west-1b"
    tags = {
      Name    = "private-us-west-1b"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "private-us-west-1c" {
    vpc_id            = aws_vpc.Ncaliforniaapp1.id
    cidr_block        = "10.75.13.0/24"
    availability_zone = "us-west-1c"
    tags = {
      Name    = "private-us-west-1c"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
  #hongkongapp1
#These are   for  public
  resource "aws_subnet" "public-ap-east-1a" {
    vpc_id                  = aws_vpc.hongkongapp1.id
    cidr_block              = "10.76.1.0/24"
    availability_zone       = "aap-east-1a"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-east-1a"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "public-ap-east-1b" {
    vpc_id                  = aws_vpc.hongkongapp1.id
    cidr_block              = "10.76.2.0/24"
    availability_zone       = "ap-east-1b"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-east-1b"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "public-ap-east-1c" {
    vpc_id                  = aws_vpc.hongkongapp1.id
    cidr_block              = "10.76.3.0/24"
    availability_zone       = "ap-east-1c"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-east-1c"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
  #these are for private
  resource "aws_subnet" "private-ap-east-1a" {
    vpc_id            = aws_vpc.hongkongapp1.id
    cidr_block        = "10.76.11.0/24"
    availability_zone = "ap-east-1a"
    tags = {
      Name    = "private-ap-east-1a"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "private-ap-east-1b" {
    vpc_id            = aws_vpc.hongkongapp1.id
    cidr_block        = "10.76.12.0/24"
    availability_zone = "ap-east-1b"
    tags = {
      Name    = "private-ap-east-1b"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "private-ap-east-1c" {
    vpc_id            = aws_vpc.hongkongapp1.id
    cidr_block        = "10.76.13.0/24"
    availability_zone = "ap-east-1c"
    tags = {
      Name    = "private-ap-east-1c"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }

   #sydney
#These are   for  public
  resource "aws_subnet" "public-ap-southeast-2a" {
    vpc_id                  = aws_vpc.sydneyapp1.id
    cidr_block              = "10.74.1.0/24"
    availability_zone       = "ap-southeast-2a"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-southeast-2a"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "public-ap-southeast-2b" {
    vpc_id                  = aws_vpc.sydneyapp1.id
    cidr_block              = "10.74.2.0/24"
    availability_zone       = "ap-southeast-2b"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-southeast-2b"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "public-ap-southeast-2c" {
    vpc_id                  = aws_vpc.sydneyapp1.id
    cidr_block              = "10.74.3.0/24"
    availability_zone       = "ap-southeast-2c"
    map_public_ip_on_launch = true
    tags = {
      Name    = "public-ap-southeast-2c"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
  #these are for private
  resource "aws_subnet" "private-ap-southeast-2a" {
    vpc_id            = aws_vpc.sydneyapp1.id
    cidr_block        = "10.74.11.0/24"
    availability_zone = "ap-southeast-2a"
    tags = {
      Name    = "private-ap-southeast-2a"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "private-ap-southeast-2b" {
    vpc_id            = aws_vpc.sydneyapp1.id
    cidr_block        = "10.74.12.0/24"
    availability_zone = "ap-southeast-2b"
    tags = {
      Name    = "private-ap-southeast-2b"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
   resource "aws_subnet" "private-ap-southeast-2c" {
    vpc_id            = aws_vpc.sydneyapp1.id
    cidr_block        = "10.74.13.0/24"
    availability_zone = "ap-southeast-2c"
    tags = {
      Name    = "private-ap-southeast-2c"
      Service = "application1"
      Owner   = "resultspeak"
      Planet  = "Musafar"
    }
  }
