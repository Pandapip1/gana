FILES=gnunet_dht_block_types.h
all: check $(FILES)

check:
	recfix --check registry.rec

distclean:
	rm -f *.tmp
clean:
	rm -f $(FILES) *.tmp

gnunet_dht_block_types.h.tmp: registry.rec h.template
	../format.sh h.template < registry.rec > $@

gnunet_dht_block_types.h: h.header gnunet_dht_block_types.h.tmp h.footer
	cat h.header gnunet_dht_block_types.h.tmp h.footer > $@

.PHONY: check clean distclean
