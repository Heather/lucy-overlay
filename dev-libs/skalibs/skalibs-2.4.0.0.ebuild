EAPI=6

DESCRIPTION="general-purpose C programming libraries"
HOMEPAGE="http://www.skarnet.org/software/skalibs/index.html"
SRC_URI="http://www.skarnet.org/software/${PN}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_configure() {
	econf \
		--bindir=/bin \
		--sbindir=/sbin \
		--dynlibdir=/$(get_libdir) \
		--libdir=/usr/$(get_libdir)/${PN} \
		--datadir=/etc \
		--sysdepdir=/usr/$(get_libdir)/skalibs/sysdeps \
		--with-dynlib=/$(get_libdir) \
		--enable-shared \
		--enable-clock \
		--enable-force-devr
}
