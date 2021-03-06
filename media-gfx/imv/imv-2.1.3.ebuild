# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit fdo-mime

DESCRIPTION="Minimal image viewer designed for tiling window manager users"
HOMEPAGE="https://github.com/eXeC64/imv"
SRC_URI="https://github.com/eXeC64/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	!sys-apps/renameutils
	media-libs/fontconfig
	media-libs/libsdl2
	media-libs/sdl2-ttf
	media-libs/freeimage
"

DEPEND="${RDEPEND}
	test? ( dev-util/cmocka )"

pkg_postinst() {
	fdo-mime_desktop_database_update
}

pkg_postrm() {
	fdo-mime_desktop_database_update
}
