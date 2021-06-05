OBJ_DIR = ./obj
SOURCE_DIR = ./src


ifneq ("$(wildcard .config)","")

CONFIG_FILE = .config

include $(CONFIG_FILE)

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

endif # ifneq ("$(wildcard .config)","")

all:: make_dir warn_config_file $(OBJ_DIR)/someapp
	$(OBJ_DIR)/someapp

clean::
	rm -f $(OBJ_DIR)/*

clobber::
	rm -rf $(OBJ_DIR)

$(OBJ_DIR)/someapp: $(SOURCE_DIR)/someapp.c $(CONFIG_FILE)
	$(CC) $(CFLAGS) $< -o $@

make_dir::
	mkdir -p $(OBJ_DIR)

menuconfig:: kconfig-frontends
	./kconfig-frontends/frontends/mconf/mconf Kconfig

kconfig-frontends:
	git clone https://github.com/movidius/kconfig-frontends.git
	cd kconfig-frontends && autoreconf -fi && ./configure && make

warn_config_file:
ifndef CONFIG_FILE
	echo "Warning!!: .config file not found. Building with all configurable features disabled."
endif
