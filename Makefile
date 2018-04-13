all:
	cc -o dynu-update-daemon dynu-update-daemon.c

install:
	cp dynu-update /usr/bin/dynu-update
	chmod 755 /usr/bin/dynu-update
	cp dynu-update-daemon /usr/bin/dynu-update-daemon
	chmod 755 /usr/bin/dynu-update-daemon

uninstall:
	rm /usr/bin/dynu-update
	rm /usr/bin/dynu-update-daemon
	killall dynu-update-daemon
