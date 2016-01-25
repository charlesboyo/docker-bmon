FROM ubuntu:15.10
MAINTAINER soluboyo@ipnxnigeria.net

RUN apt-get update
RUN apt-get -qy install build-essential make libconfuse-dev libnl-3-dev libnl-route-3-dev libncurses-dev pkg-config dh-autoreconf
ADD bmon /bmon
RUN cd /bmon && ./autogen.s  && ./configure && make && make install
CMD bmon -b
