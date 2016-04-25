PACKER = /usr/local/bin/packer

all: centos-6-x86_64.opennebula

centos-6-x86_64.opennebula:
	$(PACKER) build -only centos-6-x86_64.opennebula centos-6-x86_64.opennebula.json

clean:
	rm -fr builds
