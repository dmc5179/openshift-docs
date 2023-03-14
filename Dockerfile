# Dockerfile
FROM registry.access.redhat.com/ubi8/ubi:latest
COPY . $HOME/src/
RUN dnf -y install git python36 python36-devel ruby rubygems zlib zlib-devel && \
    gem install asciidoctor asciidoctor-diagram && \
    python3.6 -m pip install --upgrade pip && \
    python3.6 -m pip install --no-cache-dir pyyaml /root/src/aura.tar.gz && \
    rm -rf /var/cache/dnf /var/cache/yum
