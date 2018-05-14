install:
	sudo ansible-galaxy install geerlingguy.php && \
	sudo ansible-galaxy install geerlingguy.composer && \
	ansible-playbook playbook.yml
.PHONY: install
