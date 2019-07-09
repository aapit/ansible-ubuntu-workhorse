default:
	ansible-playbook ./ansible/site.yml -i ./ansible/hosts -e 'ansible_python_interpreter=/usr/bin/python3'
