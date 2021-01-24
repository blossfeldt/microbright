CC = gcc
CFLAGS = -g -Wall

PREFIX ?= /usr/local
BINDIR = ${PREFIX}/bin
UDEVDIR ?= /etc/udev/rules.d

objects = brightup brightdown

all: notice $(objects)
$(objects): %: %.c
	$(CC) $(CFLAGS) $< -o $@

notice:
	@echo "+----------------Notice----------------+"
	@echo "| Configuration is within the sources: |"
	@echo "| * sysfs-device                       |"
	@echo "| * maximum brightness                 |"
	@echo "| * minimum brightness                 |"
	@echo "| * stepping                           |"
	@echo "+--------------------------------------+"

install:
	install -d ${BINDIR}
	install -m 755 brightup ${BINDIR}
	install -m 755 brightdown ${BINDIR}
	install -d ${UDEVDIR}
	install -m 0644 90-microbright.rules ${UDEVDIR}

uninstall:
	rm ${BINDIR}/brightup
	rm ${BINDIR}/brightdown
	rm ${UDEVDIR}/90-microbright.rules

clean:
	rm $(objects)
