#!/bin/sh
if [ -d "~/mac-deploy" ]; then
  git clone https://github.com/juanuicich/mac-dev-playbook.git ~/mac-deploy
fi
if ! command -v pip >/dev/null 2>&1; then
  sudo easy_install pip
fi
if ! command -v ansible >/dev/null 2>&1; then
  sudo pip install ansible
fi
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K