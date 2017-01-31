# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit font

IT_V="1.050R-it"
RO_V="2.030R-ro"

DESCRIPTION="monospaced font family for UIs and code"
HOMEPAGE="https://github.com/adobe-fonts/source-code-pro"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${RO_V}/${IT_V}.tar.gz -> ${PN}-${RO_V}-${IT_V}.tar.gz"

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
