data "aws_ec2_transit_gateway" "mytgw" {
    filter {
    name   = "options.amazon-side-asn"
    values = ["64512"]
  }
}
