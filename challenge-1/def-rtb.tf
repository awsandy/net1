data "aws_route_table" "defrt" {
  filter {
    name = "association.subnet-id"
    values = [data.aws_instance.c9.subnet_id]
  }

}