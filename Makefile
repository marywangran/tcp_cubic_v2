obj-m := tcp_cubic2.o

PWD:=$(shell pwd)
KVER:=$(shell uname -r)
KDIR:=/lib/modules/$(KVER)/build

EXTRA_CFLAGS += -Wall -g

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
