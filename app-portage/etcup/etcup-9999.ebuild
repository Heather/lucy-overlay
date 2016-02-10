EAPI=6

inherit git-r3

DESCRIPTION="simple etc updater"
HOMEPAGE="https://github.com/lucy/etcup"
EGIT_REPO_URI="https://github.com/lucy/etcup.git"

LICENSE="public-domain"
SLOT="0"
IUSE=""

DEPEND="
	dev-vcs/git
	app-shells/bash:0"
RDEPEND="${DEPEND}"

src_install() {
	dobin etcup
}
