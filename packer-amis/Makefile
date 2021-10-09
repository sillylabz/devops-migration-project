aws_region = us-east-1
project_name = devops
application_name = jenkins
vpc_id = vpc-8de44df7
source_ami_id = $(shell aws --region $(aws_region) ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --query 'Parameters[0].[Value]' --output text)
packer_kms_key_id = $(shell aws --region us-east-1 kms describe-key --key-id alias/aws/ebs --query "KeyMetadata.KeyId" --output text)

# aws ec2 describe-vpcs --filter Name=tag:Name,Values="$(project_name)-vpc-$(env)" --query Vpcs[].VpcId --output text


init:
	packer init config.pkr.hcl

fmt:
	packer fmt .

validate:
	packer validate -var-file=values.pkvar.hcl -var 'vpc_id=$(vpc_id)' -var 'aws_region=$(aws_region)' -var 'project_name=$(project_name)' -var 'application_name=$(application_name)' -var 'packer_instance_type=t2.micro' -var 'packer_source_ami=$(source_ami_id)' -var 'packer_kms_key_id=$(packer_kms_key_id)' -var 'packer_ssh_username=ec2-user' .

build:
	packer build -var-file=values.pkvar.hcl -var 'vpc_id=$(vpc_id)' -var 'aws_region=$(aws_region)' -var 'project_name=$(project_name)' -var 'application_name=$(application_name)' -var 'packer_instance_type=t2.micro' -var 'packer_source_ami=$(source_ami_id)' -var 'packer_kms_key_id=$(packer_kms_key_id)' -var 'packer_ssh_username=ec2-user' .

dry-build:
	packer build -var-file=values.pkvar.hcl -var 'skip_create_ami=true' -var 'vpc_id=$(vpc_id)' -var 'aws_region=$(aws_region)' -var 'project_name=$(project_name)' -var 'application_name=$(application_name)' -var 'packer_instance_type=t2.micro' -var 'packer_source_ami=$(source_ami_id)' -var 'packer_kms_key_id=$(packer_kms_key_id)' -var 'packer_ssh_username=ec2-user' .







