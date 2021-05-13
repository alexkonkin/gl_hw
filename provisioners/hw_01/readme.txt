
#encrypt variables file
#run command below and set password
ansible-vault encrypt variables.yml

#run playbook
#add path to the configuration file
#that stores anbile-vault password
ansible-playbook --vault-password-file ./vault_pass.txt --extra-vars="@variables.yml" playbook.yml
