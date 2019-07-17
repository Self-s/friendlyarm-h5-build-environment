FROM ubuntu:18.04
MAINTAINER 741162948@qq.com

#mainland china aliyun sources list
#COPY ./sources.list /etc/apt/sources.list 

RUN apt-get update
RUN apt-get install -y wget \
                       vim \
                       git \
                       make \
                       gcc \
                       device-tree-compiler \
                       bc \
                       swig \
                       python-dev \
                       python3-dev

RUN mkdir /tmp/friendlyarm
WORKDIR /tmp/friendlyarm

RUN wget https://media.githubusercontent.com/media/Self-s/friendlyarm-h5-build-environment/master/h5-toolchain.tar.xz

RUN tar xf h5-toolchain.tar.xz
RUN rm -rf h5-toolchain.tar.xz

RUN git clone https://github.com/friendlyarm/u-boot.git -b sunxi-v2017.x --depth 1
RUN git clone https://github.com/friendlyarm/linux.git -b sunxi-4.14.y --depth 1

ENV PATH=/tmp/friendlyarm/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu/bin:$PATH
ENV GCC_COLORS=auto

CMD ["/bin/bash"]
