include Makefile.in

SUBDIRS=prog-7-1

.PHONY: $(SUBDIRS)

all: $(OBJ) $(SUBDIRS)

$(SUBDIRS): 
	$(MAKE) $(MFLAGS) -C $@ all

clean: default_clean
	-for d in $(SUBDIRS); do $(MAKE) $(MFLAGS) -C $$d clean; done
