Fedora systemd single-command container
=======================================

[![Build Status](https://travis-ci.com/unipartdigital/fedora-systemd.svg?branch=master)](https://travis-ci.com/unipartdigital/fedora-systemd)

This container provides a Fedora environment in which to execute an
arbitary specified command with all enabled ``systemd`` services
running in the background.  For example:

    podman run -i -t unipartdigital/fedora-systemd /bin/sh

The container will shut down cleanly once the specified command exits,
and the final exit status of the container will reflect the exit
status from the specified command.

If no command is specified, then the container will simply run all
enabled ``systemd`` services.

The container is published on Docker Hub as
[`unipartdigital/fedora-systemd`](https://hub.docker.com/r/unipartdigital/fedora-systemd/).
