FILES=taler_dbevents.h

all: check $(FILES)

check: registry.rec
	recfix --check registry.rec

distclean:
	rm -f *.tmp

clean:
	rm -f $(FILES) *.tmp

taler_dbevents.h.tmp: registry.rec h.template
	../format.sh h.template < registry.rec > $@

taler_dbevents.h: h.header taler_dbevents.h.tmp h.footer
	cat $^ > $@

.PHONY: check clean distclean
