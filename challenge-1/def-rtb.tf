data "aws_route_table" "defrt" {
  subnet_id = data.aws_subnet.c9subnet.id
  vpc_id = data.aws_vpc.dvpc.id
  filter {
    name = "association.main"
    values = [true]
  }
  id = "rtb-9bb8b2f2"
}