aws_region = us-east-1
project_name = devops
application_name = jenkins
packer_ssh_username = centos
vpc_id = vpc-8de44df7
source_ami_id = $(shell aws ec2 describe-images --filters Name=name,Values='CentOS Linux 7 x86_64 HVM EBS*' Name=architecture,Values=x86_64 Name=root-device-type,Values=ebs --query 'sort_by(Images, &Name)[-1].ImageId' --output text)


# aws --region $(aws_region) ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --query 'Parameters[0].[Value]' --output text
# aws ec2 describe-images --owners 'aws-marketplace' --filters 'Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce' --query 'sort_by(Images, &CreationDate)[-1].[ImageId]' --output 'text'

packer_kms_key_id = $(shell aws --region us-east-1 kms describe-key --key-id alias/aws/ebs --query "KeyMetadata.KeyId" --output text)

# aws ec2 describe-vpcs --filter Name=tag:Name,Values="$(project_name)-vpc-$(env)" --query Vpcs[].VpcId --output text


init:
	packer init config.pkr.hcl

fmt:
	packer fmt .

validate:
	packer validate -var-file=values.pkvar.hcl -var 'skip_create_ami=false' -var 'vpc_id=$(vpc_id)' -var 'aws_region=$(aws_region)' -var 'project_name=$(project_name)' -var 'application_name=$(application_name)' -var 'packer_instance_type=t2.micro' -var 'packer_source_ami=$(source_ami_id)' -var 'packer_kms_key_id=$(packer_kms_key_id)' -var 'packer_ssh_username=$(packer_ssh_username)' .

build:
	packer build -var-file=values.pkvar.hcl -var 'skip_create_ami=false' -var 'vpc_id=$(vpc_id)' -var 'aws_region=$(aws_region)' -var 'project_name=$(project_name)' -var 'application_name=$(application_name)' -var 'packer_instance_type=t2.micro' -var 'packer_source_ami=$(source_ami_id)' -var 'packer_kms_key_id=$(packer_kms_key_id)' -var 'packer_ssh_username=$(packer_ssh_username)' .

dry-build:
	packer build -var-file=values.pkvar.hcl -var 'skip_create_ami=true' -var 'vpc_id=$(vpc_id)' -var 'aws_region=$(aws_region)' -var 'project_name=$(project_name)' -var 'application_name=$(application_name)' -var 'packer_instance_type=t3.micro' -var 'packer_source_ami=$(source_ami_id)' -var 'packer_kms_key_id=$(packer_kms_key_id)' -var 'packer_ssh_username=$(packer_ssh_username)' .







