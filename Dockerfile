FROM bitnami/minideb:bullseye

ENV ALIYUN_CLI_VERSION 3.0.104

# Obtain and install Alibaba Cloud CLI.
ADD https://github.com/aliyun/aliyun-cli/releases/download/v${ALIYUN_CLI_VERSION}/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz /tmp/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz
RUN install_packages curl jq                                             \
    && tar -xvzf /tmp/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz   \
    && rm /tmp/aliyun-cli-linux-${ALIYUN_CLI_VERSION}-amd64.tgz          \
    && mv /tmp/aliyun /usr/local/bin/