# create
create-all:
	terragrunt run-all --terragrunt-non-interactive apply 

create-vpc:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir vpc

create-jenkins:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir jenkins

create-sonarqube:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir sonarqube


# delete
delete-jenkins:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir jenkins --terragrunt-exclude-dir vpc

delete-sonarqube:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir sonarqube --terragrunt-exclude-dir vpc


delete-all:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors


# plan, format and validate
plan-all:
	terragrunt run-all --terragrunt-non-interactive plan  --terragrunt-ignore-dependency-errors




