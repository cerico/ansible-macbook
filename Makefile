ANSIBLE := $(shell which ansible | xargs basename)

macbook:
ifeq ($(ANSIBLE),ansible)
	ansible-playbook -e @secrets macbook.yml
else
	brew install ansible
	ansible-playbook -e @secrets macbook.yml
endif

