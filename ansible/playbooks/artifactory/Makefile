CURRENT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

install-artifactory:
	ansible-galaxy collection install jfrog.platform community.postgresql community.general ansible.posix && \
		ansible-playbook -i artifactory-inventory.yaml artifactory-playbook.yaml

docker-artifactory-nexus:
	docker run -it --rm --name ansible -v ${CURRENT_DIR}:/root hernanku/devops-cli bash -c  "cd /root && ansible-galaxy collection install community.postgresql community.general ansible.posix && \
	ansible-galaxy collection install jfrog.platform community.postgresql community.general ansible.posix && \
		ansible-playbook -vv -i artifactory-inventory.yaml artifactory-playbook.yaml"

