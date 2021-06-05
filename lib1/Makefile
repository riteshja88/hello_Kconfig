include Kbuild

BASE_DIR = ..
OBJ_DIR = ./obj
LIB_DIR = ./lib
SOURCE_DIR = ./src

all:: make_dir warn_config_file clean_objs $(LIB_DIR)/$(CONFIG_LIBSTATICOUTPUTFILE)

clean:: clean_objs
	rm -f $(LIB_DIR)/*

clean_objs::
	rm -f $(OBJ_DIR)/*

clobber::
	rm -rf $(OBJ_DIR)
	rm -rf $(LIB_DIR)


$(LIB_DIR)/$(CONFIG_LIBSTATICOUTPUTFILE): $(OBJ_DIR)/somelib.o
	ar -rc $@ $^

$(OBJ_DIR)/somelib.o: $(SOURCE_DIR)/somelib.c
	$(CC) $(CFLAGS) -c $< -o $@

make_dir::
	mkdir -p $(OBJ_DIR)
	mkdir -p $(LIB_DIR)

menuconfig:: $(BASE_DIR)/kconfig-frontends
	$(BASE_DIR)/kconfig-frontends/frontends/mconf/mconf Kconfig

$(BASE_DIR)/kconfig-frontends:
	cd  $(BASE_DIR) && git clone https://github.com/movidius/kconfig-frontends.git # && git checkout 44b2a3287ebd5be5b49e51feaafb9c54c9f0fe41
	cd  $(BASE_DIR) && cd kconfig-frontends && autoreconf -fi && ./configure && make

warn_config_file:
ifndef CONFIG_FILE
	echo "Warning!!: .config file not found. Building with all configurable features disabled/default."
endif
