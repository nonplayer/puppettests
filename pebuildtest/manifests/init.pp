class pebuildtest (
) {
  $default_pe_build = pe_build_version()

  notify { "$default_pe_build": }

}
