share:=$(DESTDIR)/usr/share/gentoo-color-palette

palette.m4:

	cpp palette.m4.cpp | grep -v '^$$' | tail -n+6 > palette.m4

install:

	install -d $(share)
	install -m 644 palette.m4 $(share)

clean:

	test -f palette.m4 && rm palette.m4
