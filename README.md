veewee-rhel6
=================

### Setup veewee (for the lazy)

I'm extremely lazy and don't use ruby for any "development" work... 

For semi-automatic RVM installation, I used https://jewelrybox.unfiniti.com/ for OS X.

#### Clone veewee
https://github.com/jedi4ever/veewee/blob/master/doc/installation.md


### Download ISO
You will need to download the RHEL 6.4 ISO file and copy it to `~/opt/veewee/iso/rhel-server-6.4-x86_64-dvd.iso`.

### RHEL 6.4 veewee templates
You must configure a RHEL yum repository yourself. None of these templates provide any as it requires licensing.

#### rhel-server-6.4-x86_64-minimal
Barebones RHEL6 installation.
```
$ cd ~/opt/veewee
$ alias veewee='bundle exec veewee'
$ cp -pR <project_dir>/veewee-rhel6-vbox/rhel-server-6.4-x86_64-minimal templates
$ veewee <provider> define 'rhel64-minimal' 'rhel-server-6.4-x86_64-minimal'
$ veewee <provider> build 'rhel64-minimal'
$ veewee <provider> export 'rhel64-minimal'
$ vagrant box add 'rhel64-minimal' 'rhel64-minimal.box'
```
