include rvm
include pg

package { ['vim','git'] :
  ensure => present
}

exec { 'configure git' :
  command => "/usr/bin/git config -f /home/vagrant/.gitconfig color.ui true ; ",
  user => 'vagrant', 
  cwd => '/home/vagrant',
  require => [Package['git']]
}

rvm::system_user { vagrant: ; }
