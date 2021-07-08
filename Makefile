_unlock_root:
	@sudo echo "sudo unlocked"
check: _unlock_root
	ANSIBLE_LIBRARY='./library' ansible-playbook -i hosts --check --diff rc.yml
apply: _unlock_root
	ANSIBLE_LIBRARY='./library' ansible-playbook -i hosts rc.yml
