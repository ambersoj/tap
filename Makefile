KERNEL_SRC := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

obj-m := tun.o

all:
	make -C $(KERNEL_SRC) M=$(PWD) modules

clean:
	make -C $(KERNEL_SRC) M=$(PWD) clean
