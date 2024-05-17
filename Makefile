BIN           = cl65
OBJDIR        = ./Objects
SRCDIR        = ./Source

all:
	mkdir -p $(OBJDIR)/
	$(BIN) -C $(SRCDIR)/PharaohsCurse.cfg -l listing.lst $(SRCDIR)/PharaohsCurse.s -Ln $(OBJDIR)/object.vs -o $(OBJDIR)/object.prg -o $(OBJDIR)/object.bin
	./build_atr.py $(OBJDIR)/object.prg $(OBJDIR)/object.vs $(OBJDIR)/Pharaohs_Curse.atr ./Pharaohs_Curse.bin

clean:
	rm -rf $(OBJDIR)/
