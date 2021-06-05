OBJ_DIR = ./obj
SOURCE_DIR = ./src


include .config

ifeq ($(CONFIG_FEATURE_A),y)
	CFLAGS += -DFEATURE_A
endif

ifeq ($(CONFIG_FEATURE_B),y)
	CFLAGS += -DFEATURE_B
endif

ifeq ($(CONFIG_FEATURE_C),y)
	CFLAGS += -DFEATURE_C
endif

ifeq ($(CONFIG_FEATURE_D),y)
	CFLAGS += -DFEATURE_D
endif

ifeq ($(CONFIG_FEATURE_E),y)
	CFLAGS += -DFEATURE_E
endif

all:: make_dir $(OBJ_DIR)/someapp
	$(OBJ_DIR)/someapp

clean::
	rm -f $(OBJ_DIR)/*

clobber::
	rm -rf $(OBJ_DIR)

$(OBJ_DIR)/someapp: $(SOURCE_DIR)/someapp.c .config
	$(CC) $(CFLAGS) $< -o $@

make_dir::
	mkdir -p $(OBJ_DIR)

menuconfig:: kconfig-frontends
	./kconfig-frontends/frontends/mconf/mconf Kconfig

kconfig-frontends:
	git clone https://github.com/movidius/kconfig-frontends.git
	cd kconfig-frontends &&	autoreconf -fi && ./configure && make

