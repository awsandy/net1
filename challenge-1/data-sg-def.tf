data "aws_security_group" "defsg"
{
id = data.aws_instance.c9.vpc_security_group_ids[0]
}