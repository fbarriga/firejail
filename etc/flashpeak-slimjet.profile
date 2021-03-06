# SlimJet browser profile
# This is a whitelisted profile, the internal browser sandbox
# is disabled because it requires sudo password. The command
# to run it is as follows:
#
#  firejail flashpeak-slimjet --no-sandbox
#
noblacklist ~/.config/silmjet
noblacklist ~/.cache/slimjet
noblacklist ~/keepassx.kdbx
include /etc/firejail/disable-mgmt.inc
include /etc/firejail/disable-secret.inc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-terminals.inc

# chromium is distributed with a perl script on Arch
# include /etc/firejail/disable-devel.inc
#

caps.drop all
seccomp
protocol unix,inet,inet6,netlink
netfilter
noroot

whitelist ${DOWNLOADS}
mkdir ~/.config
mkdir ~/.config/slimjet
whitelist ~/.config/slimjet
mkdir ~/.cache
mkdir ~/.cache/slimjet
whitelist ~/.cache/simjet
mkdir ~/.pki
whitelist ~/.pki

# lastpass, keepassx
whitelist ~/.keepassx
whitelist ~/.config/keepassx
whitelist ~/keepassx.kdbx
whitelist ~/.lastpass
whitelist ~/.config/lastpass

include /etc/firejail/whitelist-common.inc
