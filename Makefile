OBJ_DIR = ./obj
SOURCE_DIR = .

all:: make_dir $(OBJ_DIR)/someapp
	$(OBJ_DIR)/someapp

clean::
	rm -f $(OBJ_DIR)/*

clobber::
	rm -rf $(OBJ_DIR)

$(OBJ_DIR)/someapp: $(SOURCE_DIR)/someapp.c
	$(CC) $< -o $@

make_dir::
	mkdir -p $(OBJ_DIR)

kconfig-frontends::
	git clone https://github.com/movidius/kconfig-frontends.git
	cd kconfig-frontends &&	autoreconf -fi && ./configure && make
