data "aws_route_table" "defrt" {
  subnet_id = data.aws_subnet.c9subnet.id
  vpc_id = data.aws_vpc.dvpc.id
  filter {
    association.main = true
  }

}