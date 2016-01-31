EAPI=6

inherit gnome2-utils git-r3

DESCRIPTION="circle icon theme from the Numix project"
HOMEPAGE="https://github.com/numixproject/numix-icon-theme-circle"
EGIT_REPO_URI="https://github.com/numixproject/numix-icon-theme-circle.git"

RESTRICT="binchecks strip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~sparc-fbsd ~x86-fbsd"

src_install() {
	insinto /usr/share/icons
	doins -r Numix-Circle{,-Light}
}

pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
