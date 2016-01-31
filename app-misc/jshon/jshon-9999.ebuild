EAPI=6

inherit git-r3

DESCRIPTION="jshon parser for shell scripting"
HOMEPAGE="https://github.com/keenerd/jshon"
EGIT_REPO_URI="https://github.com/keenerd/jshon"

LICENSE="MIT"
SLOT="0"
IUSE=""

CDEPEND="dev-libs/jansson"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
