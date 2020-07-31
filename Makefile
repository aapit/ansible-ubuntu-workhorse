CMD ::= ansible-playbook ./site.yml \
	-e 'ansible_python_interpreter=/usr/bin/python3'

# Use `$ make tag=foo` to only execute Ansible tasks with tag 'foo'
ifdef tag
	TAG_ARGS = -t ${tag}
endif
ifdef host
	HOST_ARGS = -i ${host}, --extra-vars "variable_host=${host}"
else
	HOST_ARGS = --extra-vars "ansible_connection=local"
endif

install:
	${CMD} ${TAG_ARGS} ${HOST_ARGS}
