# eth-ec2-cloudformation-docker

Region | Launch Template
------------ | -------------
**N. Virginia** (us-east-1) | [![Launch Eth Workshop Stack into Virginia with CloudFormation](/Images/deploy-to-aws.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=eth_stack&templateURL=https://s3.amazonaws.com/ethcore-parity-us-east-1/template.yml)


* input AWS Key for EC2 instance access
* select size

* ensure security group associated with launched EC2 instace is in public subnet, with security groups that allow 22.  default is typically wide openssl

* ssh -i $keyname ec2-user@$IP
* sudo docker ps