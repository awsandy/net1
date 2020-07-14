# get the default vpc id
vpcid=`aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" | jq .[0] | tr -d '"'` 
rtbid=`aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcid" "Name=association.main,Values=true" --query "RouteTables[0].RouteTableId" | tr -d '"'`
export TF_VAR_rtbid=$rtbid
echo $TF_VAR_rtbid

tsubid==`aws ec2 describe-subnets --filters "Name=cidr-block,Values=10.1.4.0/24" --query "Subnets[].SubnetId" | jq .[] | tr -d '"'` 
subid=`echo $tsubid | tr -d '='`
echo $subid
rtbid2=`aws ec2 describe-route-tables --filters "Name=association.subnet-id,Values=$subid" --query "RouteTables[0].RouteTableId" | tr -d '"'`
echo $rtbid2
xport TF_VAR_rtbid-10-1=$rtbid2
