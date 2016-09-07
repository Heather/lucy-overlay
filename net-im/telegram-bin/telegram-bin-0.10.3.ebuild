EAPI=6

DESCRIPTION="Telegram is a cloud-based mobile and desktop messaging app"
HOMEPAGE="https://telegram.org/"
SRC_URI="
	amd64? ( https://updates.tdesktop.com/tlinux/tsetup.${PV}.tar.xz )
	x86? ( https://updates.tdesktop.com/tlinux32/tsetup32.${PV}.tar.xz )"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="strip mirror"

DEPEND="
	x11-libs/libX11
	x11-libs/libxcb
	dev-libs/glib:*
	x11-libs/libXau
	x11-libs/libXdmcp"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Telegram"

src_install() {
	insinto "/opt/${PN}/"
	doins -r "${S}"/*
	fperms +x "/opt/${PN}/Telegram"
	exeinto "/opt/bin/"
	doexe "${FILESDIR}/telegram"
}
