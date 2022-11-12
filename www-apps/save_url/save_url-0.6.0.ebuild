EAPI=7

DESCRIPTION="Script to save and url in a single file with an automatic and structured name. It uses monolith as its backend"
LICENSE="GPL-3"

IUSE=""
SRC_URI="https://github.com/turulomio/save_url/archive/save_url-${PV}.tar.gz"
HOMEPAGE="https://github.com/turulomio/save_url"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="x86 amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="
dev-python/colorama
dev-python/mechanize
www-apps/monolith
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/save_url-save_url-${PV}"

src_install() {
   dobin save_url
}
