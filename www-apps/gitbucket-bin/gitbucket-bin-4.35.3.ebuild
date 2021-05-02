# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils user

DESCRIPTION="An open-source git service"
HOMEPAGE="https://github.com/gitbucket/gitbucket"
SRC_URI="https://github.com/gitbucket/gitbucket/releases/download/${PV}/gitbucket.war -> gitbucket-${PV}.war"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
dev-java/openjdk
"

DEPEND="${RDEPEND}"

GIT_USER="gitbucket"
GIT_HOME="/var/lib/gitbucket"

pkg_setup() {
    enewgroup ${GIT_USER}
    enewuser ${GIT_USER} -1 /bin/bash ${GIT_HOME} "${GIT_USER}"
}

src_unpack() {
    mkdir -p ${S}
    cp "${DISTDIR}/${A}" "${S}"
}

src_install() {
	dodir usr/lib/gitbucket

	insinto usr/lib/gitbucket
	newins gitbucket-${PV}.war gitbucket.war

	newinitd "${FILESDIR}/gitbucket.initd" gitbucket
	newconfd "${FILESDIR}/gitbucket.conf" gitbucket
}
