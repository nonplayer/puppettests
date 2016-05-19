class truevar_test (
  $restrict_cdrom = $::truevar_test::params::cdrom_true,
) inherits ::truevar_test::params {

  if $restrict_cdrom {
    notify { "$restrict_cdrom should be True": }
  } else {
    notify { "$restrict_cdrom should be False": }
  }
}

