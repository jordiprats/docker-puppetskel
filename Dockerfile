FROM ubuntu:14.04
MAINTAINER Jordi Prats

ENV HOME /root

#
# timezone and locale
#
RUN echo "Europe/Andorra" > /etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata

RUN export LANGUAGE=en_US.UTF-8 && \
	export LANG=en_US.UTF-8 && \
	export LC_ALL=en_US.UTF-8 && \
	locale-gen en_US.UTF-8 && \
	DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install gcc -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install make -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install wget -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install strace -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install libxml2-dev -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install zlib1g-dev -y

#
# puppet repo
#
RUN wget http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb >/dev/null 2>&1
RUN dpkg -i puppetlabs-release-wheezy.deb
RUN DEBIAN_FRONTEND=noninteractive apt-get update

#
# puppet packages
#
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y puppet puppet-common puppet-el puppet-testsuite puppetmaster puppetmaster-common vim-puppet

RUN mkdir -p /usr/local/src

RUN /bin/bash -c 'cd /usr/local/src; git clone https://github.com/jordiprats/puppet-module-skeleton'

RUN /bin/bash /usr/local/src/puppet-module-skeleton/install.sh

RUN mkdir -p /opt/orig

RUN mv /usr/bin/puppet /opt/orig/puppet

RUN mkdir /vol

COPY puppet /usr/bin/puppet

RUN chmod +x /usr/bin/puppet
