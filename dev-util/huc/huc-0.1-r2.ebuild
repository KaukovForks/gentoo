# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="HTML umlaut conversion tool"
SRC_URI="https://www.int21.de/huc/${P}.tar.bz2"
HOMEPAGE="https://www.int21.de/huc"

SLOT="0"
LICENSE="GPL-2+"
KEYWORDS="~amd64 ~ppc ~sparc ~x86 ~x86-linux ~ppc-macos"

src_compile() {
	$(tc-getCXX) \
		${LDFLAGS} ${CXXFLAGS} \
		-o ${PN} ${PN}.cpp || die "compile failed"
}

src_install() {
	dobin "${PN}"
	einstalldocs
}
