# get the default vpc id
vpcid=`aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" | jq .[0] | tr -d '"'` 
rtbid=`aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcid" "Name=association.main,Values=true" --query "RouteTables[0].RouteTableId"`
export TF_VAR_rtbid=$rtbid
echo $TF_VAR_rtbid

tsubid==`aws ec2 describe-subnets --filters "Name=cidr-block,Values=10.1.4.0/24" --query "Subnets[].SubnetId" | jq .[] | tr -d '"'` 
subid=`echo $tsubid | tr -d '='`

rtbid2=`aws ec2 describe-route-tables --filters "Name=association.subnet-id,Values=$subid" --query "RouteTables[0].RouteTableId"`
#echo $rtbid2
export TF_VAR_rtbid_10_1=$rtbid2
echo $TF_VAR_rtbid_10_1
