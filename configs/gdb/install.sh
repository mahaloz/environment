# use this line to strip for containers:
# sed -i 's/\\u27a4 />/g' ~/.gdbinit-gef.py 

wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/dev/gef.py
cp ./.gdbinit ~/.gdbinit
