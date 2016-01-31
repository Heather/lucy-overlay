EAPI=6

inherit git-r3

DESCRIPTION="list files, recursively"
HOMEPAGE="https://github.com/chneukirchen/lr"
EGIT_REPO_URI="https://github.com/chneukirchen/lr.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
