FROM progrium/busybox

RUN opkg-install procps bash coreutils-stat  curl xinetd 

COPY check_mk/etc /etc/
COPY check_mk/usr /usr/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT "/entrypoint.sh"
