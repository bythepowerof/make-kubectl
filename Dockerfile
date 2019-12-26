FROM alpine:3.10

RUN apk --no-cache add make &&\
    wget -q -O /bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl &&\
    chmod +x /bin/kubectl

WORKDIR /make
ENTRYPOINT ["make"]
CMD ["-h"]
