#saopaulo
  resource "aws_eip" "saopaulonat" {
    vpc = true
    tags = {
      Name = "saopaulonat"
    }
  }
  resource "aws_nat_gateway" "saopaulonat" {
    allocation_id = aws_eip.saopaulonat.id
    subnet_id     = aws_subnet.public-sa-east-1a.id
    tags = {
      Name = "saopaulonat"
    }
    depends_on = [aws_internet_gateway.saopauloigw]
  }
  #tokyo

  resource "aws_eip" "tokyonat" {
    vpc = true
    tags = {
      Name = "tokyonat"
    }
  }
  resource "aws_nat_gateway" "tokyonat" {
    allocation_id = aws_eip.tokyonat.id
    subnet_id     = aws_subnet.public-ap-northeast-1a.id
    tags = {
      Name = "tokyonat"
    }
    depends_on = [aws_internet_gateway.tokyoigw]
  }
  #Ncaliforniaapp1
  resource "aws_eip" "Ncalifornianat" {
    vpc = true
    tags = {
      Name = "Ncalifornianat"
    }
  }
  resource "aws_nat_gateway" "Ncalifornianat" {
    allocation_id = aws_eip.Ncalifornianat.id
    subnet_id     = aws_subnet.public-us-west-1a.id
    tags = {
      Name = "Ncalifornianat"
    }
    depends_on = [aws_internet_gateway.Ncaliforniaigw]
  }
  #newyork
resource "aws_eip" "newyorknat" {
  vpc = true
  tags = {
    Name = "newyorknat"
  }
}
resource "aws_nat_gateway" "newyorknat" {
  allocation_id = aws_eip.newyorknat.id
  subnet_id     = aws_subnet.public-us-east-1a.id
  tags = {
    Name = "newyorknat"
  }
  depends_on = [aws_internet_gateway.newyorkigw]
}
#sydney
resource "aws_eip" "sydneynat" {
  vpc = true
  tags = {
    Name = "sydneynat"
  }
}
resource "aws_nat_gateway" "sydneynat" {
  allocation_id = aws_eip.sydneynat.id
  subnet_id     = aws_subnet.public-ap-southeast-2a.id
  tags = {
    Name = "sydneynat"
  }
  depends_on = [aws_internet_gateway.sydneyigw]
}
#hongkong
resource "aws_eip" "hongkongnat" {
  vpc = true
  tags = {
    Name = "hongkongnat"
  }
}
resource "aws_nat_gateway" "hongkongnat" {
  allocation_id = aws_eip.hongkongnat.id
  subnet_id     = aws_subnet.public-ap-east-1a.id
  tags = {
    Name = "hongkongnat"
  }
  depends_on = [aws_internet_gateway.hongkongigw]
}

#london
  resource "aws_eip" "londonnat" {
    vpc = true
    tags = {
      Name = "londonnat"
    }
  }
  resource "aws_nat_gateway" "londonnat" {
    allocation_id = aws_eip.londonnat.id
    subnet_id     = aws_subnet.public-eu-west-2a.id
    tags = {
      Name = "londonnat"
    }
    depends_on = [aws_internet_gateway.londonigw]
  }