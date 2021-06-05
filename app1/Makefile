BASE_DIR = ..
BIN_DIR = ./bin
SOURCE_DIR = ./src

all:: make_dir  $(BIN_DIR)/someapp
	$(BIN_DIR)/someapp

clean::
	rm -f $(BIN_DIR)/*

clobber::
	rm -rf $(BIN_DIR)

INCLUDES = -I$(BASE_DIR)/lib1/include

STATICLIBS = $(BASE_DIR)/lib1/lib/lib1_app1.a

$(BIN_DIR)/someapp: $(SOURCE_DIR)/someapp.c $(STATICLIBS)
	$(CC) $(INCLUDES) $(CFLAGS) $<  $(STATICLIBS) -o $@

$(BASE_DIR)/lib1/lib/lib1_app1.a:
	cd $(BASE_DIR)/lib1 && make CONFIG=.config_app1

make_dir::
	mkdir -p $(BIN_DIR)
