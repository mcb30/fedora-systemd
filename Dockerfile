FROM fedora

RUN dnf update -y --setopt=tsflags=nodocs --setopt=install_weak_deps=False \
    && dnf install -y --setopt=tsflags=nodocs --setopt=install_weak_deps=False \
       systemd dnf-plugin-versionlock \
    && dnf versionlock systemd \
    && dnf clean all

RUN systemctl mask var-log-journal.mount console-getty systemd-logind

COPY cmdline-init cmdline /sbin/

COPY cmdline.service /lib/systemd/system/

RUN ln -sf cmdline-init /sbin/init

ENTRYPOINT [ "/sbin/init" ]
