data "aws_route_table" "defrt" { 
  #subnet_id="subnet-e09fe49b"
  #filter {
  #  name = "association.subnet-id"
  #  values = [data.aws_instance.c9.subnet_id]
  #}
  route_table_id="rtb-9bb8b2f2"

}