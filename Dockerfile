FROM ubuntu:18.04
MAINTAINER jaredlee0228@gmail.com

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y git \
                       make \
                       gcc \
                       device-tree-compiler

RUN mkdir /friendlyarm
ADD ./gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu.tar.xz /friendlyarm

ENV PATH=/friendlyarm/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu/bin:$PATH

WORKDIR /friendlyarm

CMD ["/bin/bash"]
