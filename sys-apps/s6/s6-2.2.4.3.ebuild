EAPI=6

DESCRIPTION="small and secure supervision software suite"
HOMEPAGE="http://www.skarnet.org/software/s6/"
SRC_URI="http://www.skarnet.org/software/${PN}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="dev-lang/execline:= dev-libs/skalibs:="
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_configure() {
	econf \
		--bindir=/bin \
		--sbindir=/sbin \
		--dynlibdir=/$(get_libdir) \
		--libdir=/usr/$(get_libdir)/${PN} \
		--datadir=/etc \
		--sysdepdir=/usr/$(get_libdir)/${PN} \
		--with-dynlib=/$(get_libdir) \
		--with-sysdeps=/usr/$(get_libdir)/skalibs/sysdeps \
		--enable-shared
}
