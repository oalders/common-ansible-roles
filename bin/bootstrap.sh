#!/bin/bash

cd $(git rev-parse --show-toplevel)

mkdir -p ansible/group_vars
touch ansible/group_vars/all
touch ansible/group_vars/development
touch ansible/group_vars/production
touch ansible/hosts

git submodule add git@github.com:oalders/common-ansible-roles.git ansible/tasks/roles/common-roles
git commit -m "Add common ansible roles as submodule"
echo "ansible/tasks/roles" >> .gitignore

# cd to the top level of your repository (not the top level of the submodule)
./ansible/tasks/roles/common-roles/bin/ansible-galaxy

pushd bin
ln -s ../ansible/tasks/roles/common-roles/bin/ansible-galaxy .
popd

echo "ansible/tasks/roles/geerlingguy.firewall" >> .gitignore
echo "ansible/tasks/roles/geerlingguy.mysql" >> .gitignore
echo "ansible/tasks/roles/jdauphant.nginx" >> .gitignore
echo "ansible/tasks/roles/jdauphant.ssl-certs" >> .gitignore
