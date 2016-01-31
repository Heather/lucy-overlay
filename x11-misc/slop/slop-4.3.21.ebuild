EAPI=6

inherit cmake-utils

DESCRIPTION="select screen regions"
HOMEPAGE="https://github.com/naelstrof/slop"
SRC_URI="https://github.com/naelstrof/slop/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="opengl"

RDEPEND="
	x11-libs/libX11
	x11-libs/libXext
	opengl? (
		media-libs/glew
		media-libs/imlib2
		virtual/opengl
		x11-libs/libXrandr
		x11-libs/libXrender
	)"
DEPEND="
	${RDEPEND}
	opengl? ( media-libs/glm )"

src_prepare() {
	eapply "${FILESDIR}"/no-cppcheck.patch
	eapply "${FILESDIR}"/no-gengetopt.patch
	eapply "${FILESDIR}"/no-librt.patch
	use opengl || eapply "${FILESDIR}"/no-opengl.patch
	default
}

src_configure() {
	local mycmakeargs=(-DCMAKE_OPENGL_SUPPORT="$(usex opengl)")
	cmake-utils_src_configure
}
