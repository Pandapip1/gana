FILES=taler-error-codes.h \
  taler-error-codes.ts \
  taler-error-codes.kt
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

taler-error-codes.ts.tmp: combined.tmp ts.template
	../format.sh ts.template < combined.tmp > $@

taler-error-codes.ts: ts.header taler-error-codes.ts.tmp ts.footer
	cat $^ > $@

taler-error-codes.kt.tmp: combined.tmp kt.template
	../format.sh kt.template < combined.tmp > $@

taler-error-codes.kt: kt.header taler-error-codes.kt.tmp kt.footer
	cat $^ > $@


.PHONY: check clean distclean prep
