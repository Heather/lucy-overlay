EAPI=6

inherit eutils savedconfig toolchain-funcs git-r3

DESCRIPTION="a dynamic window manager for X11"
HOMEPAGE="http://git.2f30.org/sdhcp/"
EGIT_REPO_URI="git://git.2f30.org/sdhcp.git"

LICENSE="MIT"
SLOT="0"

RDEPEND=""
DEPEND="${RDEPEND}"

src_prepare() {
	sed -i \
		-e 's/CFLAGS = .*/CFLAGS += -std=c99 -pedantic -Wall $(CPPFLAGS)/' \
		-e '/^LDFLAGS/{s|=|+=|g;s|-s ||g}' \
		config.mk || die
	eapply_user
}

src_compile() {
	emake CC=$(tc-getCC)
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install
}
