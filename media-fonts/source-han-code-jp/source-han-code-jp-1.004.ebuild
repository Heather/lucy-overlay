EAPI=5

inherit font

DESCRIPTION="japanese font based on source-code-pro"
HOMEPAGE="https://github.com/adobe-fonts/source-han-code-jp"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${PV}R.tar.gz -> ${P}R.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttc"
RESTRICT="binchecks strip"

src_prepare() {
	mv "${P}R"/OTC/*.ttc . || die
}

src_install() {
	font_src_install
}
