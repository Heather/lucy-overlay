EAPI=6

DESCRIPTION="jshon parser for shell scripting"
HOMEPAGE="https://github.com/keenerd/jshon"
SRC_URI="https://github.com/keenerd/jshon/archive/${PV##*.}.tar.gz
	-> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="dev-libs/jansson"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

S="${WORKDIR}/${PN}-${PV##*.}"
