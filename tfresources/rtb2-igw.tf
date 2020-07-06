# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_route_table.rtb-07745c715a366341d:
resource "aws_route_table" "rtb2-igw" {
  propagating_vgws = []
  route = [
    {
      cidr_block                = "0.0.0.0/0"
      egress_only_gateway_id    = ""
      gateway_id                = aws_internet_gateway.myigw.id
      instance_id               = ""
      ipv6_cidr_block           = ""
      nat_gateway_id            = ""
      network_interface_id      = ""
      transit_gateway_id        = ""
      vpc_peering_connection_id = ""
    },
  ]
  tags   = {}
  vpc_id = aws_vpc.VPC-192-168.id
}
