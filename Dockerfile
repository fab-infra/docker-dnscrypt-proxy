# DNSCrypt proxy based on openSUSE Leap 16.0
FROM ghcr.io/fab-infra/base-image:opensuse16.0

# Packages
RUN zypper in -y dnscrypt-proxy &&\
	zypper clean -a

# Files
COPY ./root /
RUN chmod a+rwX /etc/dnscrypt-proxy /var/lib/dnscrypt-proxy

# Ports
EXPOSE 5053/tcp 5053/udp

# Execution
USER dnscrypt
