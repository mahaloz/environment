# common python hacking libs
pip3 install \
    angr \
    pwntools \
    ropper \
    numpy \
    pycryptodome  

# rabin2 for fast cmdline analysis 
git clone https://github.com/radare/radare2.git /tmp/radare2 && \
    /tmp/radare2/sys/install.sh

# decomp2gef
git clone https://github.com/mahaloz/decomp2gef.git /tmp/decomp2gef && \
    python3 -m pip install -e /tmp/decomp2gef && \
    cp /tmp/decomp2gef/decomp2gef.py ~/.decomp2gef.py && \
    echo "source ~/.decomp2gef.py" >> ~/.gdbinit  

# install docker
curl -fsSL https://get.docker.com | sh
