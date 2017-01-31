# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="source-based package manager for ocaml"
HOMEPAGE="http://opam.ocaml.org/"
SRC_URI="https://github.com/ocaml/opam/releases/download/${PV}/opam-full-${PV}.tar.gz"

LICENSE="LGPL-3-with-linking-exception"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="
	dev-lang/ocaml:=
	sci-mathematics/aspcud"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opam-full-${PV}"

src_compile() {
	emake -j1 lib-ext
	emake -j1
}

src_install() {
	emake DESTDIR="${D}" install
}
