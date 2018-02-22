.PHONY: test clean
.DEFAULT_GOAL := testinclude

PATSHOMEQ=$(PATSHOME)
PATSCC=$(PATSHOMEQ)/bin/patscc
PATSOPT=$(PATSHOMEQ)/bin/patsopt
PATSCCFLAGS=-O2 -flto -ccats -DATS_MEMALLOC_GCBDW
cleanall::
testinclude: testinclude.dats ; \
   $(PATSCC) $(PATSCCFLAGS) -o $@ $< SATS/lib.sats -D_GNU_SOURCE || echo $@ ": ERROR!!!"
cleanall:: ; $(RMF) testinclude


RMF=rm -f

test:
	./testinclude

# #
# # A Simple Makefile
# #

# ######

# include \
# $(PATSHOME)/share/atsmake-pre.mk

# ######

# CFLAGS += -O2

# ######

# SOURCES_DATS += testinclude.dats

# ######

# MYTARGET=testinclude

# ######
# #
# #rename if you want
# MYPORTDIR=MYPORTDIR
# #
# MYPORTCPP=MYPORTCPP
# #
# ######

# include $(PATSHOME)/share/atsmake-post.mk

# ######

# cleanall:: ; $(RMF) $(MYPORTDIR)/*
# cleanats:: ; $(RMF) $(MYPORTDIR)/*_dats.c
# cleanats:: ; $(RMF) $(MYPORTDIR)/*_dats.o

# ######

# ###### end of [Makefile] ######