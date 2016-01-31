EAPI=6

DESCRIPTION="grounding tools for (disjunctive) logic programs"
HOMEPAGE="http://potassco.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/project/potassco/${PN}/${PV}/${P}-source.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

S="${WORKDIR}/${P}-source"

DEPEND="
	sys-devel/bison
	dev-util/re2c
	dev-util/scons"
RDEPEND=""

src_configure() { :; }

src_compile() {
	scons --build-dir=release gringo clingo || die
}

src_install() {
	dobin "build/release/gringo"
	dobin "build/release/clingo"
}
