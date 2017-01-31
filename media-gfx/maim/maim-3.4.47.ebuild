# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="improved scrot"
HOMEPAGE="https://github.com/naelstrof/maim"
SRC_URI="https://github.com/naelstrof/maim/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	media-libs/imlib2
	x11-libs/libX11
	x11-libs/libXrandr
	x11-libs/libXfixes"
RDEPEND="${DEPEND}"

src_prepare() {
	eapply "${FILESDIR}"/no-gengetopt.patch
	default
}
