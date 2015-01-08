ETC_DIR=/usr/local/etc
CONF_DIR=${ETC_DIR}/dnsmasq.d

all: clean install

install:
	mkdir ${CONF_DIR}
	cp -rf ./conf.d/*.conf ${CONF_DIR}/
	cp -f  ./dnsmasq.conf ${ETC_DIR}/

clean:
	-rm -rf ${CONF_DIR}
	-rm -f  ${ETC_DIR}/dnsmasq.conf

.PHONY : clean
