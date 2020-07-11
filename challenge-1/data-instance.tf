data "aws_instance" "c9" {
filter {
    name = "vpc-id"
    value = [data.aws_vpc.dvpc.id]
}
}