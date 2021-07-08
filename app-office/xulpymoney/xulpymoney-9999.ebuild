# Copyright 1999-2018 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Home and financial accounting system"
LICENSE="GPL-3"

IUSE=""
EGIT_REPO_URI="https://github.com/turulomio/xulpymoney.git"
HOMEPAGE="https://github.com/Turulomio/xulpymoney"
LICENSE="GPL-3"

SLOT="0"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="${RDEPEND}
dev-python/psycopg
dev-python/PyQt5[printsupport,gui,widgets]
dev-python/pytz
dev-python/officegenerator
dev-python/PyQtChart
dev-python/PyQtWebEngine
dev-python/colorama
dev-python/python-stdnum
dev-python/scipy
dev-python/tqdm
"

#S="${WORKDIR}/xulpymoney-xulpymoney-v${PV}"
