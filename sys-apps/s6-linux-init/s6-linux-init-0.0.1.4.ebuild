EAPI=6

DESCRIPTION="creates of stage 1 init binaries for s6-based systems"
HOMEPAGE="http://www.skarnet.org/software/s6-linux-init"
SRC_URI="http://www.skarnet.org/software/${PN}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="
	dev-libs/skalibs:=
	dev-lang/execline:=
	sys-apps/s6-portable-utils
	sys-apps/s6-linux-utils
	sys-apps/s6:="
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
