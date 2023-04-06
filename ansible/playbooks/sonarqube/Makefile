CURRENT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
ansible_ssh_password ?= ansible-ssh-password

install-ansible:
	ansible-galaxy install -r requirements.yml && \
		ansible-playbook -i sonarqube-inventory.yml sonarqube-playbook.yml

docker-install-ansible:
	docker run -it --rm --name ansible -v ${CURRENT_DIR}:/root hernanku/devops-cli bash -c  "cd /root && ansible-galaxy install -r requirements.yml && \
		ansible-playbook -i sonarqube-inventory.yml sonarqube-playbook.yml"

