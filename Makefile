include Makefile.in

SUBDIRS=$(shell ls -F | grep /$ | grep -v ^iPhone)

.PHONY: $(SUBDIRS)

all: $(OBJ) $(SUBDIRS)

$(SUBDIRS): 
	$(MAKE) $(MFLAGS) -C $@ all

clean: default_clean
	-for d in $(SUBDIRS); do $(MAKE) $(MFLAGS) -C $$d clean; done
