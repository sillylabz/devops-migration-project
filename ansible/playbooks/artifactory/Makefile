CURRENT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

install-artifactory:
	ansible-galaxy collection install jfrog.platform community.postgresql community.general ansible.posix && \
		ansible-playbook -vv --become --become-user=root -i artifactory-inventory.yaml artifactory-playbook.yaml -e ansible_user=devops -e ansible_password=devops123 -e ansible_host_key_checking=false


docker-artifactory-nexus:
	docker run -it --rm --name ansible -v ${CURRENT_DIR}:/root hernanku/devops-cli bash -c  "cd /root && ansible-galaxy collection install community.postgresql community.general ansible.posix && \
	ansible-galaxy collection install jfrog.platform community.postgresql community.general ansible.posix && \
		ansible-playbook -vv -i artifactory-inventory.yaml artifactory-playbook.yaml"

