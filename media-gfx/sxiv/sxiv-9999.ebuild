EAPI=6

inherit savedconfig toolchain-funcs git-r3

DESCRIPTION="simple X image viewer"
HOMEPAGE="https://github.com/haasn/sxiv/"
EGIT_REPO_URI="https://github.com/haasn/sxiv.git"

LICENSE="GPL-2"
SLOT="0/haasn"

RDEPEND="
	media-libs/libexif
	media-libs/giflib
	media-libs/imlib2[X]
	x11-libs/libX11
	media-libs/lcms"
DEPEND="${RDEPEND}"

src_prepare() {
	sed -i '/^LDFLAGS/d' Makefile || die
	tc-export CC
	restore_config config.h
	eapply_user
}

src_install() {
	emake DESTDIR="${ED}" PREFIX=/usr install
	dodoc README.md
	save_config config.h
}
