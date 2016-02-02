EAPI=6

DESCRIPTION="run a command at a particular time"
HOMEPAGE="https://github.com/chneukirchen/snooze"
SRC_URI="https://github.com/chneukirchen/snooze/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
