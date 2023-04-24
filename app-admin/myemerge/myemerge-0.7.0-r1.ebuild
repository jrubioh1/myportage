EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} pypy )

inherit distutils-r1

DESCRIPTION="My emerge sync procedure"
LICENSE="GPL-3"

HOMEPAGE="https://github.com/turulomio/${PN}"
SRC_URI="https://github.com/turulomio/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
IUSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"

DISTUTILS_USE_SETUPTOOLS=rdepend
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}
app-portage/gentoolkit
dev-util/ccache
dev-python/pycryptodome
"
