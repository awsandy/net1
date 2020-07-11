resource "aws_route" "route-10-0" {
  route_table_id            = data.aws_route_table.defrt.id
  destination_cidr_block    = "10.0.0.0/16"
  transit_gateway_id = data.aws_ec2_transit_gateway.mytgw.id
}

resource "aws_route" "route-10-1" {
  route_table_id            = data.aws_route_table.defrt.id
  destination_cidr_block    = "10.1.0.0/16"
  transit_gateway_id = data.aws_ec2_transit_gateway.mytgw.id
}

resource "aws_route" "route-10-2" {
  route_table_id            = data.aws_route_table.defrt.id
  destination_cidr_block    = "10.2.0.0/16"
  transit_gateway_id = data.aws_ec2_transit_gateway.mytgw.id
}