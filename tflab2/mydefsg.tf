resource "aws_security_group" "mydefsg" {
  description = "default VPC security group"
  vpc_id      = aws_vpc.VPC-192-168.id
}
