# About
This is my Ansible setup to provision a 'workhorse' Ubuntu (latest version LTS) machine.

On top of that, I use playbooks with a specific focus, depending on the role of the machine I'm provisioning.
Such as my [devtools playbook](https://github.com/aapit/ansible-devtools) and [one for tinkering](https://github.com/aapit/ansible-tinkertools).

# Running
## Run the installer in the repository directory
```bash
cd ansible-workhorse
make install
```
Note: This will install all included tools on `localhost`.

## Run it on a host other than `localhost`
```bash
make install host=oldskool.mainframe.cjb.net
```
## Run a select module ('role') by tag:
```bash
make install tag=keyboard
```

# Installation
## Ubuntu
Install the minimal version of Ubuntu, without extra software / bloatware.

## Ansible
Install Ansible:
```bash
$ sudo apt install ansible
```

## Passwordless `sudo`
Add passwordless sudo rights:
```bash
$ sudo visudo -f /etc/sudoers.d/overrides
```
In this file, add the line:
```
MyUserName ALL=NOPASSWD: ALL
```

## Ansible Repository
Download this repository to the machine:
```bash
$ git clone git@github.com:aapit/ansible-workhorse
```

## SSH keys
Set up your private and public ssh key(s) in `~/.ssh`
Create a new key if needed, with `ssh-keygen`

## GitHub auth
Insert the contents of `~/.ssh/id_rsa.pub` into the [keys section of GitHub's settings page](https://github.com/settings/keys)

## Dotfiles
If dotfiles aren't present on the system yet,
run the [restore script](https://raw.githubusercontent.com/aapit/dotfiles/master/Scripts/dotfiles/restore.sh) first.
