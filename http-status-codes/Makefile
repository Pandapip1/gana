FILES=registry.rec http-status-codes.h
all: check $(FILES)
check: registry.rec
	recfix --check registry.rec

# http-status-codes-1.csv is from IANA!
iana.tmp: http-status-codes-1.csv
	cat http-status-codes-1.csv | grep -v Unassigned | csv2rec > $@

# extend by all-caps descriptions suitable for C-style identifier generation
iana-extended.tmp: iana.tmp
	./extend.sh $@ iana.tmp

registry.rec: types.rec iana-extended.tmp extras.rec
	cat types.rec iana-extended.tmp extras.rec > $@

distclean:
	rm -f *.tmp

clean:
	rm -f $(FILES) *.tmp


http-status-codes.h.tmp: registry.rec h.template
	../format.sh h.template < registry.rec > $@

http-status-codes.h: h.header http-status-codes.h.tmp h.footer
	cat h.header http-status-codes.h.tmp h.footer > $@


.PHONY: check clean distclean
