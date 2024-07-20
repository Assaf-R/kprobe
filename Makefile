obj-m += sockeprob.o 
PWD := $(CURDIR) 
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules 
	rm -f .*cmd *.mod* *.o *.order Module.symvers 
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean