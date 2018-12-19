all:
	cc -o ddns-update-daemon ddns-update-daemon.c

install:
	cp ddns-update /usr/bin/ddns-update
	chmod 755 /usr/bin/ddns-update
	cp ddns-update-daemon /usr/bin/ddns-update-daemon
	chmod 755 /usr/bin/ddns-update-daemon

uninstall:
	killall ddns-update-daemon
	rm /usr/bin/ddns-update
	rm /usr/bin/ddns-update-daemon
