install:
	ansible-playbook playbook.yml
.PHONY: install

boxes:
	cd boxes/fedora && vagrant up && \
	cd ../ubuntu && vagrant up
.PHONY: boxes

rboxes:
	cd boxes/fedora && vagrant destroy -f && vagrant up && \
	cd ../ubuntu && vagrant destroy -f && vagrant up
.PHONY: rboxes

reset:
	vagrant destroy -f && vagrant up
.PHONY: reset
