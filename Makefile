FILE = todo

BIN_DIR = /usr/local/bin

all: 
	cp src/${FILE} ${BIN_DIR};

uninstall:
	rm ${BIN_DIR}/${FILE}
