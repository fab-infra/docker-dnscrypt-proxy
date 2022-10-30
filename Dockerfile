# DNSCrypt proxy based on openSUSE Leap 15.4
FROM ghcr.io/fab-infra/base-image:opensuse15.4

# Arguments
ARG DNSCRYPT_PROXY_VERSION="2.1.1"
ARG DNSCRYPT_PROXY_BASE_URL="https://github.com/DNSCrypt/dnscrypt-proxy/releases/download/${DNSCRYPT_PROXY_VERSION}"

# DNSCrypt proxy
RUN curl -sSLf "${DNSCRYPT_PROXY_BASE_URL}/dnscrypt-proxy-linux_$(case $(uname -m) in x86_64) echo x86_64 ;; aarch64) echo arm64 ;; esac)-${DNSCRYPT_PROXY_VERSION}.tar.gz" | \
	tar -xzvf - --directory /usr/local/bin --strip-components=1 --wildcards '*/dnscrypt-proxy' &&\
	chmod +x /usr/local/bin/dnscrypt-proxy

# Files
COPY ./root /
RUN chmod a+rwX /etc/dnscrypt-proxy

# Ports
EXPOSE 5053/tcp 5053/udp

# Execution
USER nobody
