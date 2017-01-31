# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit font git-r3

DESCRIPTION="standard font for Android 4 and later"
HOMEPAGE="http://developer.android.com/design/style/typography.html"
EGIT_REPO_URI="https://github.com/google/roboto.git"

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""

S="${S}/src/hinted"
FONT_S="${S}"
FONT_SUFFIX="ttf"
FONT_CONF=( "${FILESDIR}/90-roboto-regular.conf" )
