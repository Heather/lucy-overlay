EAPI=5
inherit font

IT_V="1.075R-it"
RO_V="2.020R-ro"

DESCRIPTION="Sans serif font family for user interface environments"
HOMEPAGE="https://github.com/adobe-fonts/source-sans-pro"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${RO_V}/${IT_V}.tar.gz -> ${P}-${RO_V}-${IT_V}.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="otf"
RESTRICT="binchecks strip"

src_prepare() {
	mv "${PN}-${RO_V}-${IT_V}"/OTF/*.otf . || die
}

src_install() {
	font_src_install
}
