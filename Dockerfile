FROM boot2docker/boot2docker

ADD . $ROOTFS/data/
RUN mkdir -p $ROOTFS/var/lib/boot2docker
RUN echo 'echo "EXTRA_ARGS=\"--bip 10.100.200.1/24\"" > /var/lib/boot2docker/profile' >> $ROOTFS/etc/rc.d/automount
RUN /make_iso.sh

CMD ["cat", "boot2docker.iso"]
