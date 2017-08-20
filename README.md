# ansible-common-roles

These are some roles which I have found to be helpful to me personally.  Things
will change and things will break .  This is not really meant as a repository
for someone else to rely on, but if there's something in here you can benefit
from, so much the better.

## Install roles as a submodule

```bash
git submodule add git@github.com:oalders/common-ansible-roles.git ansible/tasks/roles/common-roles
git commit -m "Add common ansible roles as submodule"
echo "ansible/tasks/roles" >> .gitignore
```

## Install 3rd party roles from Ansible Galaxy

```bash
# cd to the top level of your repository (not the top level of the submodule)
./ansible/tasks/roles/common-roles/bin/ansible-galaxy
```

## Symlink to installer script

I like to link to this from my 'bin' directory in the top level of my repository
```bash
cd bin
ln -s ../ansible/tasks/roles/common-roles/bin/ansible-galaxy .
```
