FROM debian:latest

ARG VHCLIENT="vhclientx86_64"
ARG VHCLIENT_INSTALL_DIR="/usr/local/bin"

RUN \
    apt-get -y update \
    && apt-get -y install --no-install-recommends \
    ca-certificates \
    curl \
    usbutils \
    && curl -fsSL https://www.virtualhere.com/sites/default/files/usbclient/${VHCLIENT} -o ${VHCLIENT_INSTALL_DIR}/${VHCLIENT} \
    && chmod +x ${VHCLIENT_INSTALL_DIR}/${VHCLIENT}
