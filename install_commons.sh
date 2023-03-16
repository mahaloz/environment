# install commonly needed software 
sudo apt-get update && \
sudo apt-get install -y \
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
    tmux \
    fonts-noto

python3 -m pip install sortedcontainers ipdb
