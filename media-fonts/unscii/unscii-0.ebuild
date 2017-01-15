EAPI=6

inherit font

DESCRIPTION="classic unicode fonts"
HOMEPAGE="http://pelulamu.net/unscii/"
SRC_URI="
	http://pelulamu.net/unscii/unscii-16.pcf
	http://pelulamu.net/unscii/unscii-16-full.pcf
	http://pelulamu.net/unscii/unscii-8.pcf
	http://pelulamu.net/unscii/unscii-8-tall.pcf
	http://pelulamu.net/unscii/unscii-8-thin.pcf
	http://pelulamu.net/unscii/unscii-8-alt.pcf
	http://pelulamu.net/unscii/unscii-8-mcr.pcf
	http://pelulamu.net/unscii/unscii-8-fantasy.pcf"

LICENSE="public-domain GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

S="${DISTDIR}" # XXX: HACK
FONT_S="${DISTDIR}"
FONT_SUFFIX="pcf"
RESTRICT="binchecks strip"
