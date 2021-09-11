ANSIBLE := $(shell which ansible | xargs basename)

macbook:
ifeq ($(ANSIBLE),ansible)
	ansible-galaxy install -r requirements.yml
	ansible-playbook -e @secrets macbook.yml
else
	pip3 install ansible
	ansible-galaxy install -r requirements.yml
	ansible-playbook -e @secrets macbook.yml
endif

