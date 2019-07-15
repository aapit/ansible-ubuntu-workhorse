CMD ::= ansible-playbook ./ansible/site.yml -i ./ansible/hosts \
	-e 'ansible_python_interpreter=/usr/bin/python3' -vv

# Use `$ make tag=foo` to only execute Ansible tasks with tag 'foo'
ifdef tag
	ARGS = -t ${tag}
endif

install:
	${CMD} ${ARGS}
