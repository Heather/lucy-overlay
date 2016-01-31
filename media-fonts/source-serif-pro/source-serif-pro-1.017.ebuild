EAPI=5
inherit font

DESCRIPTION="serif font family complementing source-sans-pro"
HOMEPAGE="https://github.com/adobe-fonts/source-serif-pro"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${PV}R.tar.gz -> ${P}R.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="otf"
RESTRICT="binchecks strip"

src_prepare() {
	mv "${P}R"/OTF/*.otf . || die
}

src_install() {
	font_src_install
}
