pkg_name=slimshady
pkg_origin=chetan
pkg_description="Slim Shady: super slimify your packages before export"
pkg_version="0.1.0"
pkg_maintainer="Chetan Sarva <chetan@pixelcop.net>"
pkg_license=('MIT')
pkg_source="http://some_source_url/releases/${pkg_name}-${pkg_version}.tar.gz"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="TODO"
pkg_deps=(core/coreutils core/bash core/findutils core/file core/grep core/binutils)
pkg_build_deps=()
pkg_bin_dirs=(bin)

do_download() {
  return 0
}

do_verify() {
  return 0
}

do_clean() {
  do_default_clean
}

do_unpack() {
  return 0
}

do_build() {
  return 0
}

do_check() {
  return 0
}

do_install() {
  cp -a /src/bin /src/lib $pkg_prefix/
  fix_interpreter "${pkg_prefix}/bin/slimshady" core/bash bin/bash
}

do_strip() {
  return 0
}
