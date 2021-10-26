FROM ubuntu:20.04           

# ===================================== #
# mahaloz config stuff                  #                     
# ===================================== #

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install git -y

COPY . ./environment
#RUN git clone https://github.com/mahaloz/environment.git
RUN (cd ./environment && ./install_commons.sh) 
RUN (cd ./environment && ./install_configs.sh) 

# fixup gdb config 
RUN sed -i 's/\\u27a4 />/g' ~/.gdbinit-gef.py && \
    git clone https://github.com/mahaloz/decomp2gef.git /tmp/decomp2gef && \
    cp /tmp/decomp2gef/decomp2gef.py ~/.decomp2gef.py && \ 
    echo "source ~/.decomp2gef.py" >> ~/.gdbinit 

# ===================================== #
# add more things here                  #                     
# ===================================== #
