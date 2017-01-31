# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

if [[ ${PV} == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="git://git.2f30.org/stagit.git"
else
	SRC_URI="http://dl.2f30.org/releases/${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="static git page generator"
HOMEPAGE="http://git.2f30.org/stagit/file/README.html"

LICENSE="MIT"
SLOT="0"
IUSE=""

RDEPEND=">=dev-libs/libgit2-0.22"
DEPEND="$RDEPEND"

src_prepare() {
	sed -i "${S}/config.mk" \
		-e 's/^CFLAGS.*/CFLAGS += ${INCS}/' \
		-e 's/^LDFLAGS.*/LDFLAGS += ${LIBS}/'
	default
}

src_install() {
	emake PREFIX=/usr DESTDIR="${ED}" install
}
