vsphere_password=

# init
init-all:
	terragrunt run-all --terragrunt-non-interactive init 

init-app-server:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir app-server

init-jenkins:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir jenkins

init-sonarqube:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir sonarqube

init-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir nexus-repo

init-splunk:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir splunk

init-sensu:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir sensu

init-postgres:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir postgres

init-mongo:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir mongo

init-vault:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir vault

init-dhcp:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir isc-dhcp-server

init-gitlab:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir gitlab

init-gitlab-runner:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir gitlab-runner

init-loadbalacer:
	terragrunt run-all --terragrunt-non-interactive init --terragrunt-include-dir loadbalacer


# plan
plan-all:
	terragrunt run-all --terragrunt-non-interactive plan  -var 'vsphere_password=$(vsphere_password)'

plan-app-server:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir app-server -var 'vsphere_password=$(vsphere_password)'

plan-jenkins:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir jenkins -var 'vsphere_password=$(vsphere_password)'

plan-sonarqube:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir sonarqube -var 'vsphere_password=$(vsphere_password)'

plan-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir nexus-repo -var 'vsphere_password=$(vsphere_password)'

plan-splunk:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir splunk -var 'vsphere_password=$(vsphere_password)'

plan-sensu:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir sensu -var 'vsphere_password=$(vsphere_password)'

plan-postgres:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir postgres -var 'vsphere_password=$(vsphere_password)'

plan-mongo:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir mongo -var 'vsphere_password=$(vsphere_password)'

plan-vault:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir vault -var 'vsphere_password=$(vsphere_password)'

plan-dhcp:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir isc-dhcp-server -var 'vsphere_password=$(vsphere_password)'

plan-gitlab:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir gitlab -var 'vsphere_password=$(vsphere_password)'

plan-gitlab-runner:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir gitlab-runner -var 'vsphere_password=$(vsphere_password)'

plan-loadbalacer:
	terragrunt run-all --terragrunt-non-interactive plan --terragrunt-include-dir loadbalacer -var 'vsphere_password=$(vsphere_password)'



# create
create-all:
	terragrunt run-all --terragrunt-non-interactive apply -var 'vsphere_password=$(vsphere_password)'

create-app-server:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir app-server -var 'vsphere_password=$(vsphere_password)'

create-jenkins:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir jenkins -var 'vsphere_password=$(vsphere_password)'

create-sonarqube:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir sonarqube -var 'vsphere_password=$(vsphere_password)'

create-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir nexus-repo -var 'vsphere_password=$(vsphere_password)'

create-splunk:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir splunk -var 'vsphere_password=$(vsphere_password)'

create-sensu:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir sensu -var 'vsphere_password=$(vsphere_password)'

create-postgres:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir postgres -var 'vsphere_password=$(vsphere_password)'

create-mongo:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir mongo -var 'vsphere_password=$(vsphere_password)'

create-vault:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir vault -var 'vsphere_password=$(vsphere_password)'

create-dhcp:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir isc-dhcp-server -var 'vsphere_password=$(vsphere_password)'

create-gitlab:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir gitlab -var 'vsphere_password=$(vsphere_password)'

create-gitlab-runner:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir gitlab-runner -var 'vsphere_password=$(vsphere_password)'

create-loadbalacer:
	terragrunt run-all --terragrunt-non-interactive apply --terragrunt-include-dir loadbalacer -var 'vsphere_password=$(vsphere_password)'


# delete
delete-all:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-ignore-dependency-errors -var 'vsphere_password=$(vsphere_password)'

delete-app-server:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir app-server -var 'vsphere_password=$(vsphere_password)'

delete-jenkins:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir jenkins -var 'vsphere_password=$(vsphere_password)'

delete-sonarqube:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir sonarqube -var 'vsphere_password=$(vsphere_password)'

delete-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir nexus-repo -var 'vsphere_password=$(vsphere_password)'

delete-splunk:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir splunk -var 'vsphere_password=$(vsphere_password)'

delete-sensu:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir sensu -var 'vsphere_password=$(vsphere_password)'

delete-postgres:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir postgres -var 'vsphere_password=$(vsphere_password)'

delete-mongo:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir mongo -var 'vsphere_password=$(vsphere_password)'
	
delete-vault:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir vault -var 'vsphere_password=$(vsphere_password)'

delete-dhcp:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir isc-dhcp-server -var 'vsphere_password=$(vsphere_password)'

delete-gitlab:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir gitlab -var 'vsphere_password=$(vsphere_password)'

delete-gitlab-runner:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir gitlab-runner -var 'vsphere_password=$(vsphere_password)'

delete-loadbalacer:
	terragrunt run-all --terragrunt-non-interactive destroy --terragrunt-include-dir loadbalacer -var 'vsphere_password=$(vsphere_password)'


# format
format-all:
	terragrunt run-all --terragrunt-non-interactive fmt 

format-app-server:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir app-server

format-jenkins:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir jenkins

format-sonarqube:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir sonarqube

format-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir nexus-repo

format-splunk:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir splunk

format-sensu:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir sensu

format-postgres:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir postgres

format-mongo:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir mongo

format-vault:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir vault

format-dhcp:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir isc-dhcp-server

format-gitlab:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir gitlab

format-gitlab-runner:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir gitlab-runner

format-loadbalacer:
	terragrunt run-all --terragrunt-non-interactive fmt --terragrunt-include-dir loadbalacer



# validate
validate-all:
	terragrunt run-all --terragrunt-non-interactive validate -var 'vsphere_password=$(vsphere_password)'

validate-app-server:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir app-server -var 'vsphere_password=$(vsphere_password)'

validate-jenkins:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir jenkins -var 'vsphere_password=$(vsphere_password)'

validate-sonarqube:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir sonarqube -var 'vsphere_password=$(vsphere_password)'

validate-nexus-repo:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir nexus-repo -var 'vsphere_password=$(vsphere_password)'

validate-splunk:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir splunk -var 'vsphere_password=$(vsphere_password)'

validate-sensu:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir sensu -var 'vsphere_password=$(vsphere_password)'

validate-postgres:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir postgres -var 'vsphere_password=$(vsphere_password)'

validate-mongo:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir mongo -var 'vsphere_password=$(vsphere_password)'

validate-vault:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir vault -var 'vsphere_password=$(vsphere_password)'

validate-dhcp:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir isc-dhcp-server -var 'vsphere_password=$(vsphere_password)'

validate-gitlab:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir gitlab -var 'vsphere_password=$(vsphere_password)'

validate-gitlab-runner:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir gitlab-runner -var 'vsphere_password=$(vsphere_password)'

validate-loadbalacer:
	terragrunt run-all --terragrunt-non-interactive validate --terragrunt-include-dir loadbalacer -var 'vsphere_password=$(vsphere_password)'

