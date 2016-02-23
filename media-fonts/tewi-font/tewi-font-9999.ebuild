EAPI=6

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit git-r3 font python-any-r1 

DESCRIPTION="a bitmap font"
HOMEPAGE="https://github.com/lucy/tewi-font"
EGIT_REPO_URI="https://github.com/lucy/tewi-font.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

IUSE="+pcf"

DEPEND="
	${PYTHON_DEPS}
	x11-libs/libX11
	pcf? ( x11-apps/bdftopcf )"
RDEPEND="x11-libs/libX11"

src_compile() { if use pcf; then emake; fi; }

src_install() {
	insinto "/usr/share/fonts/${PN}"
	if use pcf; then
		doins out/*
	else
		doins *.bdf
	fi
	font_src_install
}
