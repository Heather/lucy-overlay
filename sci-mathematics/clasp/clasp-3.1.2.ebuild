EAPI=6

DESCRIPTION="conflict-driven nogood learning answer set solver"
HOMEPAGE="http://potassco.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/project/potassco/${PN}/${PV}/${P}-source.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

CDEPEND="dev-cpp/tbb"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_configure() {
	./configure.sh --prefix=/usr --config=release --with-mt || die
}
src_compile() {
	emake -C build/release_mt
}

src_install() {
	dobin build/release_mt/bin/clasp
}
