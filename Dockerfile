FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    sudo \
    python3 \
    python3-pip \
    git \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install ansible

RUN useradd -m -s /bin/bash developer && \
    echo "developer ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER developer
WORKDIR /home/developer

COPY . ./

CMD ["/bin/bash"]