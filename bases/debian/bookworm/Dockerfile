FROM docker.io/debian:bookworm
USER root

# Install dependancies
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update --yes && \
    apt-get install --yes bash util-linux binutils locales curl wget tar zip unzip openssl ca-certificates tzdata jq && \
    apt-get clean && \
    rm --recursive /var/lib/apt/lists/

# Use a bash shell
SHELL [ "/usr/bin/bash", "-c" ]

# Just default to a bash prompt
ENTRYPOINT [ "/usr/bin/bash" ]
CMD []