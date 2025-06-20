EAPI=8

PYTHON_COMPAT=( python3_{9..13} )


DESCRIPTION="Module to use dictionaries, list of dictionaries and other data structures "

DISTUTILS_USE_PEP517=poetry
inherit distutils-r1
SRC_URI="https://github.com/turulomio/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/turulomio/${PN}"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DISTUTILS_USE_SETUPTOOLS="rdepend"
RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}
dev-python/colorama
dev-python/tabulate
dev-python/pylatex
dev-python/isodate
"
