#Configure the subnet
data "aws_subnet_ids" "default_subnets" {
  vpc_id = aws_default_vpc.default.id
}

#Declare the ubuntu latest image
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# Declare the data source
data "aws_availability_zones" "azs" {
  state = "available"
}
