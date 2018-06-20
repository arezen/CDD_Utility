BUILDROOT=$(HOME)
TARGET_DIR=$(BUILDROOT)/bin

CONFILE= cdd.conf

PROGS= cddalias   \
       cddd       \
       cdd_dirs   \
       cddput     \

all: $(PROGS) 
install: $(PROGS)

$(PROGS): dummy
	mkdir -p $(TARGET_DIR)
	cp $@ $(TARGET_DIR)
	chmod 755 $(TARGET_DIR)/$@

clean:
dummy:
install:

clobber:
	for i in $(PROGS); do \
	(echo rm -rf $(TARGET_DIR)/$$i); \
	(rm -rf $(TARGET_DIR)/$$i); \
	done;
