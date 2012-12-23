
DOTS = $(shell ls *.dot)
PNGS = $(DOTS:.dot=.png)

all: $(PNGS)

%.png: %.dot 
	dot -Tpng -o $@ $<

