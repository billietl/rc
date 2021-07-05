check:
	ansible-playbook -i hosts --check --diff rc.yml
apply:
	ansible-playbook -i hosts rc.yml
