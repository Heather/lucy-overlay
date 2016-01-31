EAPI=5

inherit font

DESCRIPTION="sans serif pan-CJK fonts"
HOMEPAGE="https://github.com/adobe-fonts/source-han-sans"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${PV}R.tar.gz -> ${P}R.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttc"
RESTRICT="binchecks strip"

src_unpack() {
	tar xvf "${DISTDIR}/${A}" "${P}R/SuperOTC/SourceHanSans.ttc.zip" --strip-components=2 || die
	unzip SourceHanSans.ttc.zip SourceHanSans.ttc || die
	rm SourceHanSans.ttc.zip || die
}

src_install() {
	font_src_install
}
