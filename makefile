######################################################################
#
#       @# Programm
#
#       Copyright (c) Argoden.
#       All Rights Reserved.
#
#       This Module contains Proprietary Information
#       and should be treated as Confidential.
#
#  Author:  Aleksander Prokofiev
#  Date:    10/26/2012
#  Version: VERNUMB
#
######################################################################
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
	ppp $(TARGET_DIR)/$@ $(CONFILE)
	chmod 777 $(TARGET_DIR)/$@

clean:
dummy:
install:

clobber:
	for i in $(PROGS); do \
	(echo rm -rf $(TARGET_DIR)/$$i); \
	(rm -rf $(TARGET_DIR)/$$i); \
	done;
