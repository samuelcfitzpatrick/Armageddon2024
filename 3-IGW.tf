resource "aws_internet_gateway" "tokyoigw" {
  vpc_id = aws_vpc.tokyoapp1.id

  tags = {
    Name    = "tokyoapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_internet_gateway" "londonigw" {
  vpc_id = aws_vpc.londonapp1.id

  tags = {
    Name    = "londonapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_internet_gateway" "newyorkigw" {
  vpc_id = aws_vpc.newyorkapp1.id

  tags = {
    Name    = "newyorkapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_internet_gateway" "saopauloigw" {
  vpc_id = aws_vpc.saopauloapp1.id

  tags = {
    Name    = "saopauloapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_internet_gateway" "sydneyigw" {
  vpc_id = aws_vpc.sydneyapp1.id

  tags = {
    Name    = "sydneyapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_internet_gateway" "Ncaliforniaigw" {
  vpc_id = aws_vpc.Ncaliforniaapp1.id

  tags = {
    Name    = "Ncaliforniaapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
resource "aws_internet_gateway" "hongkongigw" {
  vpc_id = aws_vpc.hongkongapp1.id

  tags = {
    Name    = "hongkongapp1_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
