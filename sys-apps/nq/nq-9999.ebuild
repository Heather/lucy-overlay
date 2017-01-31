# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="unix command line queue utility"
HOMEPAGE="https://github.com/chneukirchen/nq"
EGIT_REPO_URI="https://github.com/chneukirchen/nq.git"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS=""
IUSE=""

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
