FROM docker.io/kaleko/debian:latest
USER root

# Install java
ADD "https://api.adoptium.net/v3/assets/latest/21/hotspot?os=linux&architecture=x64&image_type=jdk" /opt/java.json
RUN cat /opt/java.json
RUN curl 'https://api.adoptium.net/v3/assets/latest/21/hotspot?os=linux&architecture=x64&image_type=jdk'
RUN JAVA_URL=$(cat /opt/java.json | jq --raw-output ".[0].binary.package.link") && \
    curl --location "$JAVA_URL" --output /opt/java.tar.gz && \
    mkdir --parent /opt/java/ && \
    tar --extract --file /opt/java.tar.gz --directory /opt/java/ --strip-components 1 --verbose && \
    rm /opt/java.json /opt/java.tar.gz

# Set java environment variables
ENV JAVA_HOME=/opt/java
ENV PATH=$PATH:$JAVA_HOME/bin

# Just default to a bash prompt
ENTRYPOINT [ "/usr/bin/bash" ]
CMD []