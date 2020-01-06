FROM fedora

RUN rm /sbin/init

COPY init cmdline /sbin/

COPY cmdline.service /lib/systemd/system/

ENTRYPOINT [ "/sbin/init" ]

CMD [ "/bin/sh" ]
