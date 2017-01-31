# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="unix command line queue utility"
HOMEPAGE="https://github.com/chneukirchen/nq"
SRC_URI="https://github.com/chneukirchen/nq/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
