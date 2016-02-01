EAPI="6"

inherit toolchain-funcs git-r3

DESCRIPTION="A RSS/Atom feed reader for the text console"
HOMEPAGE="http://www.newsbeuter.org/index.html"
EGIT_REPO_URI="https://github.com/akrennmair/newsbeuter.git"

LICENSE="MIT"
SLOT="0"
IUSE="test"

RDEPEND=">=dev-db/sqlite-3.5:3
	>=dev-libs/stfl-0.21
	>=net-misc/curl-7.18.0
	dev-libs/json-c:=
	dev-libs/libxml2"

DEPEND="${RDEPEND}
	dev-lang/perl
	virtual/pkgconfig
	sys-devel/gettext
	test? (
		dev-libs/boost
		sys-devel/bc
	)"

# tests require network access
RESTRICT="test"

src_prepare() {
	eapply_user
	sed -i 's:-ggdb::' Makefile || die
}

src_configure() {
	./config.sh || die
}

src_compile() {
	emake CXX="$(tc-getCXX)" AR="$(tc-getAR)" RANLIB="$(tc-getRANLIB)"
}

src_test() {
	emake test
	# Tests fail if in ${S} rather than in ${S}/test
	cd "${S}"/test
	./test || die
}

src_install() {
	emake prefix="${D}/usr" docdir="${D}/usr/share/doc/${PF}" install
	dodoc AUTHORS README CHANGES
}
