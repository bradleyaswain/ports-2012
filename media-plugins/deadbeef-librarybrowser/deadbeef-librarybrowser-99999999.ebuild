# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

DEADBEEF_GUI="yes"

inherit autotools deadbeef-plugins git-r3

DESCRIPTION="DeaDBeeF filebrowser plugin that resemble foobar2k music library"
HOMEPAGE="https://github.com/JesseFarebro/deadbeef-librarybrowser"
EGIT_REPO_URI="https://github.com/JesseFarebro/${PN}.git"

LICENSE="GPL-2"
KEYWORDS=""

RDEPEND+=" !media-plugins/deadbeef-fb:0"

DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-avoid-version.patch"

	eautoreconf
}

src_configure() {
	econf --disable-static \
		$(use_enable gtk2) \
		$(use_enable gtk3)
}
