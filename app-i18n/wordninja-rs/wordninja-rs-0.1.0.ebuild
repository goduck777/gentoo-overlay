# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
ansi_term-0.11.0
atty-0.2.14
bitflags-1.2.1
clap-2.33.3
hermit-abi-0.1.17
lazy_static-1.4.0
libc-0.2.80
strsim-0.8.0
textwrap-0.11.0
unicode-width-0.1.8
vec_map-0.8.2
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="A Rust port of wordninja"
HOMEPAGE="https://github.com/chengyuhui/wordninja-rs"
SRC_URI="https://github.com/chengyuhui/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"
IUSE=""

