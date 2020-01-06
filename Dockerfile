FROM fedora

RUN dnf update -y \
    && dnf install -y \
       dnf-plugin-versionlock \
    && dnf versionlock systemd \
    && dnf clean all

COPY cmdline-init cmdline /sbin/

COPY cmdline.service /lib/systemd/system/

RUN ln -sf cmdline-init /sbin/init

ENTRYPOINT [ "/sbin/init" ]
