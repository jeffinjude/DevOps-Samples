class mysite {
	include apache

	file { '/etc/apache2/sites-enabled/mysite' :
		owner => root, group => root, mode => 0644,
		source => "puppet:///files/mysite/mysite_apache.conf",
		notify => Service['apache2'],
	}

	file { '/var/www/html/mysite' :
		ensure => directory,
	}

	file { '/var/www/html/mysite/index.html' :
                owner => root, group => root, mode => 0644,
                content => "Puppet Sample!",
        }

}
