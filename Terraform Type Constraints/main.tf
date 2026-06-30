resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr[0]
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name  = "new vpc"
    }
}

resource "aws_subnet" "public_subnet" {
    cidr_block = var.cidr[1]
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Name = "Public-subnet"
    }
}

resource "aws_subnet" "private_subnet" {
    cidr_block = var.cidr[2]
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Name  = "private_subnet"
    }
}

resource "aws_security_group" "my_security_group" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Name = "my-sec-grp"
    }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr[3]]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr[3]]
  }
}