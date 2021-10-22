FROM debian:buster

RUN apt-get update && apt-get install -y ca-certificates

ENTRYPOINT ["/usr/bin/go-quic-proxy"]

COPY go-quic-proxy /usr/bin/go-quic-proxy

