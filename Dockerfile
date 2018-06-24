FROM azul/zulu-openjdk:10

RUN apt-get update && \
yes | apt-get install git curl && \
curl -fsSL get.docker.com -o get-docker.sh && \
sh get-docker.sh