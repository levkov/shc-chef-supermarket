FROM levkov/base
MAINTAINER levkov

RUN apt-get update
RUN wget https://packagecloud.io/chef/stable/packages/ubuntu/trusty/supermarket_2.0.0~alpha.0-1_amd64.deb/download && \
    dpkg -i download && rm -rf download
RUN supermarket-ctl reconfigure

EXPOSE 443
