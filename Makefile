CMD ::= ansible-playbook ./book.yml -i ./hosts \
	-e 'ansible_python_interpreter=/usr/bin/python3'

# Use `$ make tag=foo` to only execute Ansible tasks with tag 'foo'
ifdef tag
	ARGS = -t ${tag}
endif

install:
	${CMD} ${ARGS}

install-verbose:
	${CMD} ${ARGS} -v

check-requirements:
	${IDF_PATH}/tools/check_python_dependencies.py
