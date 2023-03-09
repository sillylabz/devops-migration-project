CURRENT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

install-nexus:
	ansible-galaxy install -r requirements.yml && \
		ansible-playbook -i nexus-repo-inventory.yaml nexus-repo-playbook.yaml

docker-install-nexus:
	docker run -it --rm --name ansible -v ${CURRENT_DIR}:/root hernanku/devops-cli bash -c  "cd /root && ansible-galaxy install -r requirements.yml && \
		ansible-playbook -i nexus-repo-inventory.yaml nexus-repo-playbook.yaml"

