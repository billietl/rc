_unlock_root:
	@sudo echo "sudo unlocked"
check: _unlock_root
	ansible-playbook -i hosts --check --diff rc.yml
apply: _unlock_root
	ansible-playbook -i hosts rc.yml
