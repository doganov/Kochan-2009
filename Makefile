include Makefile.in

SUBDIRS=prog-7-1 prog-7-2 prog-7-3 prog-7-4 prog-7-5 prog-7-6

.PHONY: $(SUBDIRS)

all: $(OBJ) $(SUBDIRS)

$(SUBDIRS): 
	$(MAKE) $(MFLAGS) -C $@ all

clean: default_clean
	-for d in $(SUBDIRS); do $(MAKE) $(MFLAGS) -C $$d clean; done
