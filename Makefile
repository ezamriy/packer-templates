CL_ACTIVATION_KEY = undefined
PACKER = /usr/local/bin/packer


cloudlinux-5.11: cloudlinux-5.11-x86_64.opennebula \
	             cloudlinux-5.11-i386.opennebula \
	             cloudlinux-5.11-x86_64.vagrant \
	             cloudlinux-5.11-i386.vagrant

cloudlinux-6.8: cloudlinux-6.8-x86_64.opennebula \
                cloudlinux-6.8-i386.opennebula \
                cloudlinux-6.8-x86_64.vagrant \
                cloudlinux-6.8-i386.vagrant

cloudlinux-7.2: cloudlinux-7.2-x86_64.vagrant cloudlinux-7.2-x86_64.opennebula

centos-7.2: centos-7.2-x86_64.opennebula centos-7.2-x86_64.vagrant

centos-6.8: centos-6.8-x86_64.opennebula \
            centos-6.8-i386.opennebula \
            centos-6.8-x86_64.vagrant \
            centos-6.8-i386.vagrant

cloudlinux-5.11-x86_64.opennebula:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-5.11-x86_64.opennebula cloudlinux-5.11.json

cloudlinux-5.11-i386.opennebula:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-5.11-i386.opennebula cloudlinux-5.11.json

cloudlinux-5.11-x86_64.vagrant:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-5.11-x86_64.vagrant cloudlinux-5.11.json

cloudlinux-5.11-i386.vagrant:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-5.11-i386.vagrant cloudlinux-5.11.json

cloudlinux-6.8-x86_64.opennebula:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-6.8-x86_64.opennebula cloudlinux-6.8.json

cloudlinux-6.8-i386.opennebula:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-6.8-i386.opennebula cloudlinux-6.8.json

cloudlinux-6.8-x86_64.vagrant:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-6.8-x86_64.vagrant cloudlinux-6.8.json

cloudlinux-6.8-i386.vagrant:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-6.8-i386.vagrant cloudlinux-6.8.json

cloudlinux-7.2-x86_64.vagrant:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-7.2-x86_64.vagrant cloudlinux-7.2.json

cloudlinux-7.2-x86_64.opennebula:
	$(PACKER) build -var CL_ACTIVATION_KEY=$(CL_ACTIVATION_KEY) \
                  -only cloudlinux-7.2-x86_64.opennebula cloudlinux-7.2.json

centos-7.2-x86_64.opennebula:
	$(PACKER) build -only centos-7.2-x86_64.opennebula centos-7.2.json

centos-7.2-x86_64.vagrant:
	$(PACKER) build -only centos-7.2-x86_64.vagrant centos-7.2.json

centos-6.8-x86_64.opennebula:
	$(PACKER) build -only centos-6.8-x86_64.opennebula centos-6.8.json

centos-6.8-x86_64.vagrant:
	$(PACKER) build -only centos-6.8-x86_64.vagrant centos-6.8.json

centos-6.8-i386.opennebula:
	$(PACKER) build -only centos-6.8-i386.opennebula centos-6.8.json

centos-6.8-i386.vagrant:
	$(PACKER) build -only centos-6.8-i386.vagrant centos-6.8.json

clean:
	rm -fr builds/*
