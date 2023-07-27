#/bin/bash
curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document >> meta.json
#cat meta.json
echo "Enter the metadata you need from the list: 
accountId
architecture
availabilityZone
billingProducts
devpayProductCodes
marketplaceProductCodes
imageId
instanceId
instanceType
kernelId
pendingTime
privateIp
ramdiskId
region
version"
read key
#echo $key
grep -i $key meta.json|cut -d ":" -f2
rm -rf meta.json
unset key