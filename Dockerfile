FROM fedora

COPY cmdline-init cmdline /sbin/

COPY cmdline.service /lib/systemd/system/

RUN ln -sf cmdline-init /sbin/init

ENTRYPOINT [ "/sbin/init" ]
