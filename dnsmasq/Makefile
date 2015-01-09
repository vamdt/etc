ETC_DIR=/usr/local/etc
CONF_DIR=${ETC_DIR}/dnsmasq.d

all: clean install reload

install:
	mkdir ${CONF_DIR}
	cp -rf ./conf.d/*.conf ${CONF_DIR}/
	cp -f  ./dnsmasq.conf ${ETC_DIR}/

reload:
	sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
	sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist

clean:
	-rm -rf ${CONF_DIR}
	-rm -f  ${ETC_DIR}/dnsmasq.conf

.PHONY : clean
