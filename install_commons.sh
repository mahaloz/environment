# install commonly needed software 
apt-get update && \
apt-get install -y \
    libtool \
    g++ \
    gcc \
    sshfs \
    coreutils \
    automake \
    git \
    cmake \
    netcat \
    net-tools \
    wget \
    curl \
    build-essential \
    vim \
    gdb \
    ltrace \
    strace \
    python3 \
    python3-pip \
    ipython3 \
    tmux

python3 -m pip install sortedcontainers ipdb
