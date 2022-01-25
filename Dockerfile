FROM debian:bullseye

ENV ALIYUN_CLI_VERSION 3.0.104

# Add the jq tool for displaying command output in the JSON format.
RUN apt-get update && \
    apt-get install -y curl wget jq

# Obtain and install Alibaba Cloud CLI.
RUN wget https://github.com/aliyun/aliyun-cli/releases/download/v${ALIYUN_CLI_VERSION}/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz
RUN tar -xvzf aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz
RUN rm aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz
RUN mv aliyun /usr/local/bin/