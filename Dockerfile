FROM boot2docker/boot2docker

ADD . $ROOTFS/data/
RUN mkdir -p $ROOTFS/var/lib/boot2docker
RUN echo 'EXTRA_ARGS="--bip 10.100.200.1/24"' >> $ROOTFS/var/lib/boot2docker/profile
RUN /make_iso.sh

CMD ["cat", "boot2docker.iso"]
