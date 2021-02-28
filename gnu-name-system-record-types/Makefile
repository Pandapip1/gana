FILES=gnu_name_system_record_types.h
all: check $(FILES)

check:
	recfix --check registry.rec

distclean:

	rm -f *.tmp
clean:
	rm -f $(FILES) *.tmp

gnu_name_system_record_types.h.tmp: registry.rec h.template
	../format.sh h.template < registry.rec > $@

gnu_name_system_record_types.h: h.header gnu_name_system_record_types.h.tmp h.footer
	cat $^ > $@

.PHONY: check clean distclean
