FILES=gnu_name_system_record_types.h gnu_name_system_record_types.rst
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
	cat h.header gnu_name_system_record_types.h.tmp h.footer > $@

gnu_name_system_record_types.rst.tmp: registry.rec rst.template
	../format.sh rst.template < registry.rec > $@

gnu_name_system_record_types.rst: rst.header gnu_name_system_record_types.rst.tmp rst.footer
	cat rst.header gnu_name_system_record_types.rst.tmp rst.footer > $@


.PHONY: check clean distclean
