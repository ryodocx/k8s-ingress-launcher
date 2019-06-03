FROM alpine:3.9.4 AS certs
RUN apk add ca-certificates

FROM golang:1.12.5-alpine3.9 AS golang

FROM scratch
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
