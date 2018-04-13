all:
	cc -o dynu-update-daemon dynu-update-daemon.c

install:
	cp dynu-update /usr/bin/dynu-update
	cp dynu-update-daemon /usr/bin/dynu-update-daemon

uninstall:
	killall dynu-update-daemon
	rm /usr/bin/dynu-update
	rm /usr/bin/dynu-update-daemon
