data "aws_instance" "c9" {
filters {
    name = "vpc-id"
    value = [data.aws_vpc.dvpc.id]
}
}