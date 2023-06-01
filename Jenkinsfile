#!/bin/bash
set -xe

cd /var/lib/jenkins/workspace/taj-new/terraform

sed -i "s/server_name/${SERVER_NAME}/g" backend.tf
export TF_VAR_name=${SERVER_NAME}

terraform init -reconfigure
terraform plan
terraform $TERRAFORM_ACTION -auto-approve

if [ $TERRAFORM_ACTION = "destroy" ]; then
	exit 0
else
	cd /var/lib/jenkins/workspace/taj-new/ansible
	ansible-playbook -i /opt/ansible/inventory/aws_ec2.yaml passenger.yml 
fi
