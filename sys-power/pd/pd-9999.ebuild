# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="suspend on power button event"
HOMEPAGE="https://github.com/lucy/pd"
EGIT_REPO_URI="https://github.com/lucy/pd.git"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND=">=sys-kernel/linux-headers-3"
