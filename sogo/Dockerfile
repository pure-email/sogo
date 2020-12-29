FROM ubuntu:20.04
MAINTAINER 'Pure-Email'

RUN apt-get update && apt-get install -y gnupg2 ca-certificates
#FIX tzdata INTERACTIVE SHELL REQUEST
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
#FIX POLICY EXITCODE 1
RUN printf '#!/bin/sh\nexit 0' > /usr/sbin/policy-rc.d
#FIX SOGO SILENT BUILD
RUN mkdir -p /usr/share/doc/sogo/ \
  && touch /usr/share/doc/sogo/empty.sh
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 0x810273C4
RUN echo 'deb http://packages.inverse.ca/SOGo/nightly/5/ubuntu/ focal focal' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
  sogo \
  && rm -rf /var/lib/apt/lists/*

RUN sed -i.bak 's|\/var\/run|\/var\/lib\/sogo|g' /etc/init.d/sogo
USER sogo
ENV w_count=3

CMD ["/usr/sbin/sogod", "-WONoDetach", "YES", "-WOPidFile", "/var/lib/sogo/sogo.pid", "-WOLogFile", "/proc/1/fd/1", "-WOWorkersCount", "$w_count"]
