FROM debian:latest
RUN apt-get update \
    && apt-get install -y cowsay fortune lolcat \
    && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
