EAPI=6

DESCRIPTION="solver for package dependencies"
HOMEPAGE="http://potassco.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/project/potassco/${PN}/${PV}/${P}-source.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="
	dev-util/cmake
	dev-libs/boost
	dev-util/re2c"
RDEPEND="
	sci-mathematics/clasp
	sci-mathematics/gringo"

S="${WORKDIR}/${P}-source"

src_configure() {
	mkdir -p build/release || die
	cd build/release || die
	cmake \
		-DCMAKE_INSTALL_PREFIX:PATH="${EPREFIX}"/usr \
		-DCUDF2LP_LOC=cudf2lp \
		-DGRINGO_LOC=gringo \
		-DCLASP_LOC=clasp \
		-DCMAKE_BUILD_TYPE=Release ../.. \
		|| die
}

src_compile() {
	cd build/release || die
	emake
}

src_install() {
	cd build/release || die
	emake DESTDIR="${D}" install
}
