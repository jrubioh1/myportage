EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} pypy )

inherit distutils-r1

DESCRIPTION="My gentoo kernel compilation script"
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
app-arch/cpio
dev-python/colorama
dev-python/pytz
dev-util/ccache
sys-fs/cryptsetup
sys-fs/e2fsprogs
sys-apps/iucode_tool
sys-apps/util-linux
sys-firmware/intel-microcode
sys-kernel/linux-firmware
"
