install:
	ansible-playbook playbook.yml
.PHONY: install

boxes:
	cd boxes/fedora && vagrant up && \
	cd ../ubuntu && vagrant up
.PHONY: boxes

rboxes:
	cd boxes/fedora && vagrant destroy && vagrant up && \
	cd ../ubuntu && vagrant destroy && vagrant up
.PHONY: rboxes
