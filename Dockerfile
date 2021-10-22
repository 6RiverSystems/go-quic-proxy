FROM debian:buster

ENTRYPOINT ["/usr/bin/go-quic-proxy"]

COPY go-quic-proxy /usr/bin/go-quic-proxy

