FROM alpine:3.6

RUN apk update && \
apk add --no-cache git docker