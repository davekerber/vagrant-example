include rvm

if $rvm_installed == "true" {
	rvm_system_ruby { 'ruby-1.9.3-p392':
	  ensure => 'present',
	  default_use => true;
	}
	rvm_gem {
      'ruby-1.9.3-p392@global/puppet':
      ensure => 'present',
      require => Rvm_system_ruby['ruby-1.9.3-p392'];
	
      'ruby-1.9.3-p392@global/bundler':
      ensure => 'present',
      require => Rvm_system_ruby['ruby-1.9.3-p392'];

      'ruby-1.9.3-p392@global/pg':
      ensure => '0.14.1',
      require => [Rvm_system_ruby['ruby-1.9.3-p392']];
	
	  'ruby-1.9.3-p392@global/mailcatcher':
	  ensure => 'present',
	  require => Rvm_system_ruby['ruby-1.9.3-p392'];
	}
}
