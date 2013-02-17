include MakeDefns
# module ("library") directories
LIBDIRS = retrieval langmod index parsing utility contrib/antlr contrib/xpdf

# application directories
APPDIRS = app

DIRS = $(LIBDIRS) $(APPDIRS)

# derived targets for sub directories
OBJDIRS = $(DIRS:%=%/obj)
DEPENDDIRS = $(DIRS:%=%/depend)

INSTALLDIRS = $(bindir) $(includedir) $(includedir)/indri $(libdir)

MF = ../src/Makefile

.PHONY: all lib clean install install-bin install-lib  $(DIRS) $(INSTALLDIRS)

all: $(DIRS) 

lib: $(LIBDIRS)

$(OBJDIRS) $(DEPENDDIRS) $(INSTALLDIRS):
	$(INSTALL_DIR) $@

$(DIRS): $(OBJDIRS) $(DEPENDDIRS)
	$(MAKE) -C $@/obj -f $(MF) all


clean:
	for dir in $(DIRS) ; do $(MAKE) -C $$dir/obj -f $(MF) clean ; done

install: install-lib install-bin


install-bin: $(INSTALLDIRS)
	for dir in $(APPDIRS) ; do $(MAKE) -C $$dir/obj -f $(MF) install; done

install-lib: $(INSTALLDIRS)
	rm -f $(libdir)/$(LEMURLIB)
	for dir in $(LIBDIRS) ; do $(MAKE) -C $$dir/obj -f $(MF) install; done
