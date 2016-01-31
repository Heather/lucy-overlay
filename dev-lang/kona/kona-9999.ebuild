EAPI=6

inherit git-r3

DESCRIPTION="open source implementation of the K programming language"
HOMEPAGE="https://github.com/kevinlawler/kona"
EGIT_REPO_URI='https://github.com/kevinlawler/kona.git'

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dodir /usr/bin
	emake install PREFIX="${ED}/usr/"
}
