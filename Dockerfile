# Kurento Media Server
#
# VERSION               6.0.0

FROM      ubuntu:14.04
MAINTAINER Patxi Gortázar <patxi.gortazar@gmail.com>

# make sure the package repository is up to date
RUN apt-get update \
	&& apt-get -y install wget \
	&& echo "deb http://ubuntu.kurento.org trusty kms6" | sudo tee /etc/apt/sources.list.d/kurento.list \
	&& wget -O - http://ubuntu.kurento.org/kurento.gpg.key | sudo apt-key add - \
	&& sudo apt-get update \
	&& sudo apt-get -y install kurento-media-server-6.0

EXPOSE 8888

ENTRYPOINT ["/usr/bin/kurento-media-server"]
