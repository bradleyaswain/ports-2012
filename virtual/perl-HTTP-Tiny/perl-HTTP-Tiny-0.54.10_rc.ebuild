# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Virtual for HTTP-Tiny"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm ~hppa ~ia64 ~ppc ~ppc64 ~sparc x86"
IUSE=""

RDEPEND="
	|| ( =dev-lang/perl-5.22.3* ~perl-core/${PN#perl-}-${PV} )
	dev-lang/perl:=
	!<perl-core/${PN#perl-}-${PV}
	!>perl-core/${PN#perl-}-${PV}-r999
"
