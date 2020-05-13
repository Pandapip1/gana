FILES=taler-error-codes.h
all: check $(FILES)
check: registry.rec
	recfix --check registry.rec

distclean:
	rm -f *.tmp

clean:
	rm -f $(FILES) *.tmp

prep:
	cd ../http-status-codes; make ; cd -

combined.tmp: registry.rec prep
	recsel -t TalerErrorCode -j HttpStatus -p Description,Name,Value,HttpStatus,HttpStatus.Value,HttpStatus.Identifier ../http-status-codes/registry.rec registry.rec > $@

taler-error-codes.h.tmp: combined.tmp h.template
	../format.sh h.template < combined.tmp > $@

taler-error-codes.h: h.header taler-error-codes.h.tmp h.footer
	cat $^ > $@


.PHONY: check clean distclean prep
