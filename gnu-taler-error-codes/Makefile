FILES=taler-error-codes.h \
  taler-error-codes.c \
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

combined-escaped.tmp: combined.tmp
	sed 's/"/\\"/g' $^ > $@

length.tmp: combined.tmp
	recsel -p "Count(Description):ECS_LENGTH" combined.tmp > $@

taler-error-codes.h.tmp: combined.tmp h.template
	../format.sh h.template < combined.tmp > $@

taler-error-codes.h: h.header taler-error-codes.h.tmp h.footer
	cat $^ > $@

taler-error-codes.c.tmp: combined-escaped.tmp c.template
	../format.sh c.template < combined-escaped.tmp > $@

taler-error-codes-length.c.tmp: length.tmp c-length.template
	../format.sh c-length.template < length.tmp > $@

taler-error-codes.c: c.header taler-error-codes.c.tmp taler-error-codes-length.c.tmp c.footer
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
