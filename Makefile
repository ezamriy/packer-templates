PACKER = /usr/local/bin/packer

all: centos-6-i386.opennebula centos-6-x86_64.opennebula centos-7-x86_64.opennebula

centos-6-i386.opennebula:
	$(PACKER) build -only centos-6-i386.opennebula centos-6-i386.opennebula.json

centos-6-x86_64.opennebula:
	$(PACKER) build -only centos-6-x86_64.opennebula centos-6-x86_64.opennebula.json

centos-7-x86_64.opennebula:
	$(PACKER) build -only centos-7-x86_64.opennebula centos-7-x86_64.opennebula.json

clean:
	rm -fr builds
