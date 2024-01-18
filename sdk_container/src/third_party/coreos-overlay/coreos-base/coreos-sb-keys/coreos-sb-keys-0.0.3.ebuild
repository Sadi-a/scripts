# Copyright (c) 2015 CoreOS Inc.
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Flatcar Secure Boot keys"
HOMEPAGE=""
SRC_URI=""
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

S="${WORKDIR}"

src_install() {
	insinto /usr/share/sb_keys
	newins "${FILESDIR}/PK.key" PK.key
	newins "${FILESDIR}/PK.crt" PK.crt
	newins "${FILESDIR}/KEK.key" KEK.key
	newins "${FILESDIR}/KEK.crt" KEK.crt
	newins "${FILESDIR}/DB.key" DB.key
	newins "${FILESDIR}/DB.crt" DB.crt

	# shim keys
	newins "${FILESDIR}/shim.key" shim.key
  newins "${FILESDIR}/shim.der" shim.der
  newins "${FILESDIR}/shim.pem" shim.pem
}
