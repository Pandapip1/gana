FILES=gnunet_signatures.h gnunet_signatures.rst
all: check $(FILES)
check:
	recfix --check registry.rec
distclean:
	rm -f *.tmp
clean:
	rm -f $(FILES) *.tmp
gnunet_signatures.h.tmp: registry.rec h.template
	../format.sh h.template 'Package = "GNUnet"' < registry.rec > $@

gnunet_signatures.h: h.header gnunet_signatures.h.tmp h.footer
	cat h.header gnunet_signatures.h.tmp h.footer > $@

gnunet_signatures.rst.tmp: registry.rec rst.template
	../format.sh rst.template 'Package = "GNUnet"' < registry.rec > $@

gnunet_signatures.rst: rst.header gnunet_signatures.rst.tmp rst.footer
	cat rst.header gnunet_signatures.rst.tmp rst.footer > $@


.PHONY: check clean distclean
