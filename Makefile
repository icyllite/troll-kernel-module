KERNELRELEASE ?= $(shell uname -r)
KERNEL_DIR    ?= /lib/modules/$(KERNELRELEASE)/build
PWD           := $(shell pwd)

obj-m += troll.o

all:
	make -C $(KERNEL_DIR) M=$(PWD) modules
clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean
install:
	make -C $(KERNEL_DIR) M=$(PWD) modules_install
