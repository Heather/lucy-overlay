EAPI=6

DESCRIPTION="simple xargs and apply replacement"
HOMEPAGE="https://github.com/chneukirchen/xe"
SRC_URI="https://github.com/chneukirchen/xe/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
