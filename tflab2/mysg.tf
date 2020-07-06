resource "aws_security_group" "mysg" {
  description = "lSG-inbound-from-10-0"
  vpc_id      = aws_vpc.VPC-192-168.id
}
