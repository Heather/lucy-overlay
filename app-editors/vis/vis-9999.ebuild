EAPI=6

if [[ "${PV}" == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/martanne/vis.git"
else
	SRC_URI="https://github.com/martanne/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="a vim like text editor"
HOMEPAGE="https://github.com/martanne/vis"

LICENSE="ISC"
SLOT="0"
IUSE="acl lua selinux"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-libs/libtermkey
	sys-libs/ncurses
	acl? ( virtual/acl )
	lua? ( >=dev-lang/lua-5.2 )"

src_prepare() {
	sed -i -e 's/-D_FORTIFY_SOURCE=2//' configure || die
	default
}

src_configure() {
	econf \
		"$(use_enable acl)" \
		"$(use_enable lua)" \
		"$(use_enable selinux)" \
		--enable-lpeg=no
}

src_compile() {
	emake STRIP=echo # hack
}
