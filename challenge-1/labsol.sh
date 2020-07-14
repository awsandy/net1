# get the default vpc id
vpcid=`aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" | jq .[0] | tr -d '"'` 
rtbid=`aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcid" "Name=association.main,Values=true" --query "RouteTables[0].RouteTableId" | tr -d '"'`
echo $rtbid