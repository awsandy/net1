data "aws_route_table" "defrt" { 
  #subnet_id="subnet-e09fe49b"
  filter {
    name = "association.subnet-id"
    values = [data.aws_subnet.c9subnet.subnet_id]
  }
  #route_table_id=var.rtbid
}