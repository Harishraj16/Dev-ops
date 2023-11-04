#!/bin/bash
 
##################################################
# Author: Harish
# Date:  1st Nov 2023
# Version: V1
#
# This script will report the AWS resource usage
##################################################
 
set -x
exec > resourcetracker 2>&1

# list S3 buckets
echo "List of S3 Buckets"
aws s3 ls

# list EC2 Instance
echo "List of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "List of Lambda Functions"
aws lambda list-functions

# list IAM users
echo "List of IAM Users"
aws iam list-users
