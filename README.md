# About
This is my Ansible setup to provision a 'workhorse' Ubuntu (latest version LTS) machine.

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
## 1. Ubuntu
Install the minimal version of Ubuntu, without extra software / bloatware.

## 2. Ansible
Install Ansible:
```bash
$ sudo apt install ansible
```

## 3. Passwordless `sudo`
Add passwordless sudo rights:
```bash
$ sudo visudo -f /etc/sudoers.d/overrides
```
In this file, add the line:
```
MyUserName ALL=NOPASSWD: ALL
```

## 4. Ansible Repository
Download this repository to the machine:
```bash
$ git clone git@github.com:aapit/ansible-workhorse
```

## 5. SSH keys
Set up your private and public ssh key(s) in `~/.ssh`
