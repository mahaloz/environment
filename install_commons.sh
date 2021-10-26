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
    build-essential \
    gdb \
    ltrace \
    strace \
    python3 \
    python3-pip \
    ipython3 

# install configs
./configs/bash/install.sh
./configs/tmux/install.sh
./configs/vim/install.sh
./configs/gdb/install.sh 

