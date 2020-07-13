FROM docker:19.03.12

ENV DOCKER_CLI_EXPERIMENTAL=enabled

RUN apk update && \
    apk add git docker

# Install buildx plugin
RUN wget https://github.com/docker/buildx/releases/download/v0.4.1/buildx-v0.4.1.linux-amd64 && \
    mkdir -p ~/.docker/cli-plugins && \
    mv buildx-v0.4.1.linux-amd64 ~/.docker/cli-plugins/docker-buildx && \
    chmod a+x ~/.docker/cli-plugins/docker-buildx


