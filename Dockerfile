FROM debian:jessie

RUN apt-get update \
	&& apt-get install -y --no-install-recommends syslog-ng-core \
	&& rm -r /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
COPY etc/syslog-ng /etc/syslog-ng
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 514 514/udp
VOLUME /data
