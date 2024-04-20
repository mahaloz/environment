FROM --platform=linux/amd64 ubuntu:jammy

# ===================================== #
# mahaloz config stuff                  #                     
# ===================================== #

ENV DEBIAN_FRONTEND=noninteractive
# common libs for doing sane things 
RUN apt-get update && \
    apt-get install -y \
        libtool \
        g++ \
        gcc \
        clang \
        sshfs \
        coreutils \
        binutils \
        openssh-server \
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
        fonts-noto \
        curl \
        wget \
        sudo 

# work as normal user mahaloz
RUN useradd -ms /bin/bash mahaloz && \
    usermod -aG sudo mahaloz && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER mahaloz
WORKDIR /home/mahaloz 

# python deps
RUN pip3 install \
    sortedcontainers \
    ipdb \
    pwntools \
    ropper \
    numpy \
    pycryptodome

# setup bash settings and such
RUN wget https://starship.rs/install.sh -O /tmp/install.sh && \ 
    chmod +x /tmp/install.sh && sudo /tmp/install.sh -y && \
    mkdir github && \
    cd github && \
    git clone https://github.com/mahaloz/environment.git && \
    cd .. && \
    cp github/environment/configs/bash/.bashrc ~/ && \
    cp github/environment/configs/tmux/.tmux.conf ~/ && \
    mkdir .config && \
    cp github/environment/configs/bash/starship.toml .config/
    
RUN git config --global user.email "mahaloz@mahaloz.re" && \
    git config --global user.name "mahaloz"

# fixup gdb config 
#RUN sed -i 's/\\u27a4 />/g' ~/.gdbinit-gef.py && \
#    git clone https://github.com/mahaloz/decomp2gef.git /tmp/decomp2gef && \
#    cp /tmp/decomp2gef/decomp2gef.py ~/.decomp2gef.py && \ 
#    echo "source ~/.decomp2gef.py" >> ~/.gdbinit 
