FROM golang:1.16 as builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

FROM debian:buster

COPY --from=builder /app/go-quic-proxy /usr/bin/go-quic-proxy


ENTRYPOINT ["/usr/bin/go-quic-proxy"]
