class servicetest {

  package { 'ntp' :
    ensure => installed,
  }

  service { "ntpd" :
    #ensure => "running",
    enable => "true",
    require => Package["ntp"],
  }

}




