# init
init:
	terragrunt run-all --terragrunt-non-interactive init 


# create
create-all:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir 

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

create-app:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir app


# delete
delete-all:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-ignore-dependency-errors

delete-jenkins:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-include-dir jenkins

delete-sonarqube:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-include-dir sonarqube

delete-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-include-dir nexus-repo

delete-splunk:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-include-dir splunk

delete-sensu:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-include-dir sensu

delete-app:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors --terragrunt-include-dir app


# plan, format and validate
plan-all:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors

plan-app:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors --terragrunt-include-dir app

plan-jenkins:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors --terragrunt-include-dir jenkins

plan-sonarqube:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors --terragrunt-include-dir sonarqube

plan-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors --terragrunt-include-dir nexus-repo

plan-splunk:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors --terragrunt-include-dir splunk

plan-sensu:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-ignore-dependency-errors --terragrunt-include-dir sensu


