# create
init-all:
	terragrunt run-all --terragrunt-non-interactive init 

create-all:
	terragrunt run-all --terragrunt-non-interactive apply 

create-vpc:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir vpc

create-jenkins:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir jenkins

create-sonarqube:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir sonarqube

create-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir nexus-repo

create-splunk:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir splunk

create-sensu:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir sensu


# delete
delete-jenkins:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir jenkins --terragrunt-exclude-dir vpc

delete-sonarqube:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir sonarqube --terragrunt-exclude-dir vpc

delete-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir nexus-repo

delete-splunk:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir splunk

delete-sensu:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir sensu

delete-all:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors


# plan, format and validate
plan-all:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors




