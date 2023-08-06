# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit linux-mod git-r3

DESCRIPTION="Driver for AC1200 (801.11ac) Wireless Dual-Band USB Adapter"
HOMEPAGE="https://github.com/astsam/rtl8812au"
EGIT_REPO_URI="https://github.com/abperiasamy/rtl8812AU_8821AU_linux"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ARCH=x86_64
MODULE_NAMES="rtl8812au(net/wireless:)"
BUILD_TARGETS="clean modules"
