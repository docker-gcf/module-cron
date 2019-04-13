FROM debian:stretch

ADD https://raw.githubusercontent.com/docker-gcf/docker-gcf/develop/setup.sh /tmp/docker-gcf-setup.sh
RUN sh /tmp/docker-gcf-setup.sh -m cron=develop -m rsyslog=develop
ENTRYPOINT ["gcf-entrypoint"]
CMD ["supervisord", "-n"]

RUN pkgs-install cron rsyslog

COPY ./bin /usr/local/bin/
COPY ./config /etc/salt/base/
