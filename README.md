# About
This is my Ansible setup to provision a 'workhorse' Ubuntu (latest version, non-LTS) machine.
Note: Might be perceived as highly opinionated / biased / personal. But then again, I get that a lot about myself, too ;)

# Installation
- Install Ubuntu, minimal version (without extra software)
- Install Ansible: `sudo apt install ansible`
- Add passwordless sudo rights with `sudo visudo -f /etc/sudoers.d/overrides`, adding the line `MyUserName ALL=NOPASSWD: ALL`
- Download this repository to the machine
- Run `make` in the repository directory
- Setup private and public ssh key(s)
