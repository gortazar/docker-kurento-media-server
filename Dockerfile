# Kurento Media Server
#
# VERSION               6.1.0

FROM      ubuntu:14.04
MAINTAINER Patxi Gortázar <patxi.gortazar@gmail.com>

# make sure the package repository is up to date
RUN apt-get update \
	&& apt-get -y install wget \
	&& echo "deb http://ubuntu.kurento.org trusty kms6" | tee /etc/apt/sources.list.d/kurento.list \
	&& wget -O - http://ubuntu.kurento.org/kurento.gpg.key | apt-key add - \
	&& apt-get update \
	&& apt-get -y install kurento-media-server-6.0 \
	&& apt-get clean \
        && rm -rf /var/lib/apt/lists/*

EXPOSE 8888

ENV GST_DEBUG=Kurento*:5

ENTRYPOINT ["/usr/bin/kurento-media-server"]
CMD ["2>&1"]
