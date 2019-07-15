# Todo

## Enable Compose Key (for accents and such)
This exactly does what I want but is a bit of a hassle:
https://help.gnome.org/admin/system-admin-guide/stable/keyboard-compose-key.html.en
This one probably won't do what I need:
https://ubuntuforums.org/showthread.php?t=2225253
It seems like a way to enable this on CLI.

Otherwise this seems like a (more recent) manual way:
http://ubuntuhandbook.org/index.php/2019/02/enable-set-compose-key-ubuntu-18-04/

## htop

_________________________

# Packages

## apt packages
This is the list of leftover apt packages that I used to manage through a custom script, instead of through Ansible. Hopefully I will not need them anymore - either because of an updated system and dependencies, or because I can move these dependencies into a containerized context.

```
cargo
cmake
libgit2-26
ruby
rustc
zlib1g-dev
libsecret-1-dev
nodejs
npm
compizconfig-settings-manager
libgconf-2-4
autokey-gtk
taskwarrior
net-tools
tlp
rename
xattr
php7.2-cli
php-xml
composer
build-essential
python-dev
python3-dev
python-libusb1
nfs-common
smbclient
python3-apt
virtualbox-ext-pack
postfix
openvpn
openvpn-systemd-resolved
docker-compose
nfs-kernel-server
exfat-fuse
exfat-utils
gnome-pomodoro
dhcpcd5
unetbootin
dde
dde-file-manager
deepin-gtk-theme
golang-go
linux-image-generic-hwe-18.04
linux-headers-generic-hwe-18.04
gnome-panel
brave-keyring
libatk-adaptor
libgail-common
libcanberra-gtk-module
chrome-gnome-shell
v4l2loopback-dkms
preload
```

Some of these packages came with a custom ppa and/or key:

### Pomodoro app
```
repo="deb https://download.opensuse.org/repositories/home:/kamilprusko/xUbuntu_18.10/ /"
listfile="/etc/apt/sources.list.d/gnome-pomodoro.list"
if ! grep -Fxq "$repo" $listfile; then
    curl -s https://download.opensuse.org/repositories/home:/kamilprusko/xUbuntu_18.10/Release.key | sudo apt-key add -
```

### UNetbootin (for usb boot disks)
```
sudo add-apt-repository ppa:gezakovacs/ppa
```

### Deepin window manager
```
sudo add-apt-repository ppa:leaeasy/dde 
```

## Snap packages
```
gnome-contacts
gnome-system-monitor
htop
todoist-thibaut
typora-alanzanattadev
firefox
ghostwriter-casept
gimp
gnome-calculator
gnome-calendar
gnome-characters
gnome-contacts
gnome-logs
gnome-system-monitor
gtk-common-themes
pypy3
travis
whatsdesk
```

## Brewfile
```
tap "ethereum/ethereum"
tap "eugenmayer/dockersync"
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-versions"
tap "homebrew/core"
tap "homebrew/fuse"
tap "homebrew/php"
tap "homebrew/services"
cask "osxfuse"
brew "python3"
brew "libyaml"
brew "ansible"
brew "autoconf"
brew "autojump"
brew "automake"
brew "awscli"
brew "bash"
brew "bat"
brew "composer"
brew "coreutils"
brew "cscope"
brew "libgpg-error"
brew "libassuan"
brew "libksba"
brew "pth"
brew "dirmngr"
brew "docker"
brew "exa"
brew "fish"
brew "fswatch"
brew "fzf"
brew "gettext"
brew "git"
brew "gnu-getopt"
brew "git-flow-avh"
brew "libusb"
brew "gnupg"
brew "gnupg@1.4"
brew "go"
brew "googler"
brew "gpg-agent"
brew "hh"
brew "htop"
brew "httpie"
brew "hub"
brew "hugo"
brew "libssh2"
brew "libtool"
brew "libusb-compat"
brew "lolcat"
brew "mackup"
brew "macvim"
brew "midnight-commander"
brew "mongodb"
brew "moreutils"
brew "mosh"
brew "mysql"
brew "neovim"
brew "nmap"
brew "node@8", link: true
brew "nvm"
brew "openssl@1.1"
brew "openvpn"
brew "pandoc"
brew "php"
brew "phpunit"
brew "pinentry-mac"
brew "pkg-config"
brew "ponysay"
brew "reattach-to-user-namespace"
brew "sshfs"
brew "task"
brew "tasksh"
brew "the_silver_searcher"
brew "tmux"
brew "tree"
brew "unison"
brew "unrar"
brew "vault"
brew "vim"
brew "watch"
brew "watchman"
brew "wget"
brew "wp-cli"
brew "yarn", link: false
brew "ethereum/ethereum/ethereum"
brew "eugenmayer/dockersync/unox"
cask "1password"
cask "1password-cli"
cask "airfoil"
cask "alfred"
cask "atom"
cask "caffeine"
cask "controlplane"
cask "cyberduck"
cask "dockertoolbox"
cask "dropbox"
cask "firefox"
cask "gas-mask"
cask "google-cloud-sdk"
cask "gpg-suite"
cask "harvest"
cask "hazel"
cask "iterm2"
cask "java"
cask "little-snitch"
cask "nordvpn"
cask "path-finder"
cask "paw"
cask "platypus"
cask "sequel-pro"
cask "skype"
cask "slack"
cask "spectacle"
cask "spotify"
cask "sshfs"
cask "steam"
cask "torbrowser"
cask "tunnelblick"
cask "virtualbox"
cask "vlc"
cask "vmware-fusion8"
```

## NPM
```
typescript
```

## Python 2 packages
```
alabaster==0.7.11
ansible==2.7.7
apache-libcloud==2.2.1
apsw==3.16.2.post1
argh==0.26.2
asn1crypto==0.24.0
autokey==0.90.4
awscli==1.16.96
Babel==2.6.0
backports-abc==0.5
backports.ssl-match-hostname==3.5.0.1
beautifulsoup4==4.6.0
botocore==1.12.86
cached-property==1.3.1
ccsm==0.9.13.1
certifi==2018.1.18
chardet==3.0.4
CherryPy==8.9.1
click==6.6
colorama==0.3.9
CommonMark==0.5.4
compizconfig-python==0.9.13.1
coverage==4.1
coveralls==1.1
cryptography==2.1.4
cssselect==1.0.3
cssutils==1.0.2
dnspython==1.15.0
docker==2.5.1
docker-compose==1.17.1
docker-pycreds==0.2.1
dockerpty==0.4.1
docopt==0.6.2
docutils==0.14
duplicity==0.7.17
enum34==1.1.6
fasteners==0.12.0
feedparser==5.2.1
Flask==0.11.1
Flask-GoogleMaps==0.2.0
funcsigs==1.0.2
functools32==3.2.3.post2
future==0.15.2
futures==3.2.0
geopy==1.11.0
gpsoauth==0.3.0
greenlet==0.4.14
gWakeOnLan==0.5.1
gyp==0.1
html5-parser==0.4.4
html5lib==0.999999999
httplib2==0.9.2
idna==2.6
imagesize==1.0.0
imutils==0.5.1
ipaddress==1.0.17
itsdangerous==0.24
Jinja2==2.8
jmespath==0.9.3
jsonschema==2.6.0
keyring==10.6.0
keyrings.alt==3.0
libusb1==1.6.3
livereload==2.5.2
lockfile==0.12.2
lxml==4.2.1
Markdown==2.6.9
MarkupSafe==0.23
mechanize==0.2.5
mock==2.0.0
monotonic==1.0
msgpack==0.5.6
neovim==0.2.6
netaddr==0.7.19
netifaces==0.10.4
numpy==1.15.2
olefile==0.45.1
opencv-python==3.4.3.18
packaging==17.1
paramiko==2.0.0
pathtools==0.1.2
pbr==3.1.1
peewee==2.8.1
Pillow==5.1.0
pip==19.0.3
port-for==0.3.1
powerline-gitstatus==1.2.1
powerline-status==2.6
protobuf==3.6.1
protobuf-to-dict==0.1.0
psutil==5.4.2
pyasn1==0.4.2
pycairo==1.16.2
pycrypto==2.6.1
pycryptodomex==3.4.2
Pygments==2.2.0
pygobject==3.26.1
pyinotify==0.9.6
pykerberos==1.1.14
pyOpenSSL==17.5.0
pyparsing==2.2.0
PyPDF2==1.26.0
python-dateutil==2.6.1
python-xlib==0.20
pytz==2018.4
pyusb==1.0.2
pyxdg==0.25
PyYAML==3.13
recommonmark==0.4.0
regex==2017.12.12
reportlab==3.4.0
repoze.lru==0.7
requests==2.10.0
Routes==2.4.1
rsa==3.4.2
s2sphere==0.2.4
s3transfer==0.1.13
SecretStorage==2.3.1
setuptools==39.2.0
simplejson==3.13.2
singledispatch==3.4.0.3
six==1.11.0
snowballstemmer==1.2.1
Sphinx==1.7.5
sphinx-autobuild==0.7.1
sphinxcontrib-websupport==1.1.0
SQLAlchemy==1.1.0b2
tesserocr==2.3.1
texttable==0.9.1
tornado==5.0.2
trollius==2.2
typing==3.6.4
unity-lens-photos==1.0
urllib3==1.22
uTidylib==0.3
watchdog==0.8.3
webencodings==0.5
WebOb==1.7.3
websocket-client==0.44.0
Werkzeug==0.11.10
wheel==0.31.1
xmltodict==0.11.0
```

## Python 3 packages
```
apt-xapian-index==0.47
apturl==0.5.2
asn1crypto==0.24.0
awscli==1.16.20
beautifulsoup4==4.6.0
blinker==1.4
botocore==1.12.10
Brlapi==0.6.6
caffeine==2.9.4
certifi==2018.8.24
cffi==1.11.5
chardet==3.0.4
chrome-gnome-shell==0.0.0
command-not-found==0.3
cryptography==2.1.4
cssselect==1.0.3
cupshelpers==1.0
defer==1.0.6
dell-recovery==0.0.0
distro-info==0.18
docutils==0.14
evdev==0.7.0
ewmh==0.1.5
feedparser==5.2.1
fido2==0.5.0
galternatives==0.92.2
greenlet==0.4.14
howdoi==1.1.13
html5lib==0.999999999
httplib2==0.9.2
idna==2.7
jmespath==0.9.3
keyring==10.6.0
keyrings.alt==3.0
language-selector==0.1
launchpadlib==1.10.6
lazr.restfulclient==0.13.5
lazr.uri==1.0.3
louis==3.5.0
lxml==4.2.4
macaroonbakery==1.1.3
Mako==1.0.7
MarkupSafe==1.0
msgpack==0.5.6
neovim==0.2.6
netifaces==0.10.4
oauth==1.0.1
oauthlib==2.0.6
olefile==0.45.1
pbr==4.2.0
pexpect==4.2.1
Pillow==5.1.0
pip==18.0
ply==3.11
powerline-gitstatus==1.2.1
powerline-status==2.6
progressbar==2.3
protobuf==3.0.0
psutil==5.4.2
pyasn1==0.4.4
pycairo==1.16.2
pycparser==2.18
pycrypto==2.6.1
pycups==1.9.73
Pygments==2.2.0
pygobject==3.26.1
PyJWT==1.5.3
pymacaroons==0.13.0
PyNaCl==1.1.2
pyOpenSSL==17.5.0
pyquery==1.4.0
pyRFC3339==1.0
pyscard==1.9.6
python-apt==1.6.3+ubuntu1
python-dateutil==2.7.3
python-debian==0.1.32
python-xlib==0.20
pytz==2018.3
pyudev==0.21.0
pyusb==1.0.0
pyxdg==0.25
PyYAML==3.12
reportlab==3.4.0
requests==2.19.1
requests-cache==0.4.13
requests-unixsocket==0.1.5
rsa==3.4.2
s3transfer==0.1.13
SecretStorage==2.3.1
setuptools==39.2.0
simplejson==3.13.2
six==1.11.0
system-service==0.3
systemd-python==234
testresources==2.0.1
ubuntu-drivers-common==0.0.0
ufw==0.35
unattended-upgrades==0.1
unity-scope-calculator==0.1
unity-scope-chromiumbookmarks==0.1
unity-scope-colourlovers==0.1
unity-scope-devhelp==0.1
unity-scope-firefoxbookmarks==0.1
unity-scope-manpages==0.1
unity-scope-openclipart==0.1
unity-scope-texdoc==0.1
unity-scope-tomboy==0.1
unity-scope-virtualbox==0.1
unity-scope-yelp==0.1
unity-scope-zotero==0.1
urllib3==1.23
usb-creator==0.3.3
vboxapi==1.0
wadllib==1.3.2
webencodings==0.5
wheel==0.31.1
xattr==0.9.2
xkit==0.0.0
yubikey-manager==2.0.0
zope.interface==4.3.2
```

## Ruby gems
```
addressable (2.5.2, 2.4.0)
airbrussh (1.3.0)
backports (3.11.4)
backticks (1.0.2)
bigdecimal (default: 1.3.4)
bundler (1.16.5)
capistrano (3.11.0)
capistrano-bundler (1.3.0)
capistrano-composer (0.0.6)
CFPropertyList (3.0.0)
cmath (default: 1.0.0)
concurrent-ruby (1.0.5)
connection_pool (2.2.2)
csv (default: 1.0.0)
daemons (1.2.6)
date (default: 1.0.0)
dbm (default: 1.0.0)
did_you_mean (1.2.1, 1.2.0)
docker-compose (1.1.9)
docker-sync (0.5.7)
dotenv (2.5.0)
erubis (2.7.0)
etc (default: 1.0.0)
faraday (0.15.3)
faraday_middleware (0.12.2)
fcntl (default: 1.0.0)
fiddle (default: 1.0.0)
fileutils (default: 1.0.2)
gdbm (default: 2.0.0)
gem_update_checker (0.2.0)
gh (0.15.1)
highline (2.0.0, 1.7.10)
i18n (1.1.0)
io-console (default: 0.4.6)
ipaddr (default: 1.2.0)
json (default: 2.1.0)
launchy (2.4.3)
mini_portile2 (2.3.0)
minitest (5.11.3, 5.10.3)
multi_json (1.13.1)
multipart-post (2.0.0)
net-http-persistent (3.0.0, 2.9.4)
net-http-pipeline (1.0.1)
net-scp (1.2.1)
net-ssh (5.0.2)
net-telnet (0.2.0, 0.1.1)
openssl (default: 2.1.0)
os (1.0.0)
plist (3.4.0)
power_assert (1.1.3, 0.2.7)
psych (default: 3.0.2)
public_suffix (3.0.3)
pusher-client (0.6.2)
rake (12.3.1)
rb-fsevent (0.10.3)
rdoc (6.0.4, default: 6.0.1)
scanf (default: 1.0.0)
sdbm (default: 1.0.0)
semver (1.0.1)
slackistrano (3.8.2)
sshkit (1.17.0)
stringio (default: 0.0.1)
strscan (default: 1.0.0)
terminal-notifier (2.0.0)
test-unit (3.2.8, 3.2.5)
thor (0.20.0)
tmuxinator (0.12.0)
webrick (default: 1.4.2)
websocket (1.2.8)
xdg (2.2.3)
zlib (default: 1.0.0)
```
