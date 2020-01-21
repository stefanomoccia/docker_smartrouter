MAINTAINER Stefano Moccia

RUN apk add --no-cache bash hostapd iptables dhcp docker iproute2 iw
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD apstart.sh /bin/apstart.sh

ENTRYPOINT [ "/bin/apstart.sh" ]
