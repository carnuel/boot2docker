FROM boot2docker/boot2docker
MAINTAINER carnuel
USER root

RUN curl -L https://test.docker.com/builds/Linux/x86_64/docker-1.9.0-rc5 > $ROOTFS/usr/local/bin/docker && chmod +x $ROOTFS/usr/local/bin/docker
RUN /make_iso.sh
CMD ["cat", "boot2docker.iso"]


