# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit font

IT_V="1.075R-it"
RO_V="2.020R-ro"

DESCRIPTION="sans serif font family for UIs"
HOMEPAGE="https://github.com/adobe-fonts/source-sans-pro"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${RO_V}/${IT_V}.tar.gz -> ${P}-${RO_V}-${IT_V}.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/${PN}-${RO_V}-${IT_V}"
FONT_S="${S}/OTF"
FONT_SUFFIX="otf"
RESTRICT="binchecks strip"

src_install() {
	font_src_install
}
