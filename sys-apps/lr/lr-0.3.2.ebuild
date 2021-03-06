# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="list files, recursively"
HOMEPAGE="https://github.com/chneukirchen/lr"
SRC_URI="https://github.com/chneukirchen/lr/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
