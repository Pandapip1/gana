FILES=tlds.conf
all: check $(FILES)

check:
	recfix --check registry.rec

distclean:

	rm -f *.tmp
clean:
	rm -f $(FILES) *.tmp

tlds.conf.tmp: registry.rec tlds.template
	../format.sh tlds.template < registry.rec > $@

tlds.conf: tlds.header tlds.conf.tmp
	cat tlds.header tlds.conf.tmp > $@

.PHONY: check clean distclean
