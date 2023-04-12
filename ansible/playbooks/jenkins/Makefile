curr_dir := $(shell pwd)
ansible_password ?= ansible_password

install-jenkins:
	ansible-galaxy install -r requirements.yml && \
		ansible-playbook -i inventory.yml main.yml

install-jenkins-docker:
	docker run -it --rm --name ansible -v ${curr_dir}:/root hernanku/devops-cli bash -c "cd /root && \
		ansible-galaxy install -r requirements.yml && \
		ansible-playbook -i inventory.yml -e ansible_password=${ansible_password} main.yml"

