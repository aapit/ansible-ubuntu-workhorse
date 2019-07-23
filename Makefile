CMD ::= ansible-playbook ./site.yml -i ./hosts \
	-e 'ansible_python_interpreter=/usr/bin/python3'

# Use `$ make tag=foo` to only execute Ansible tasks with tag 'foo'
ifdef tag
	ARGS = -t ${tag}
endif

install:
	${CMD} ${ARGS}
