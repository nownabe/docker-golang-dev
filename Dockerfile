FROM golang:1.8-alpine
LABEL maintainer=goodpatch <info@goodpatch.com>

RUN \
  apk add --update --no-cache git gcc musl-dev g++ curl make \
  && go get -u github.com/golang/dep/cmd/dep \
  && go get github.com/golang/lint/golint
