# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_internet_gateway.igw-06fcd611034e99d14:
resource "aws_internet_gateway" "myigw" {
  count=var.mycount
  tags   = {}
  vpc_id = aws_vpc.VPC[count.index].id
}
