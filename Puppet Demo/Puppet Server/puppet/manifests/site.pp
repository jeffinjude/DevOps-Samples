import 'classes/*.pp'

class toolbox {
	file { '/usr/local/sbin/puppetagentstart.sh':
		owner => root, group => root, mode => 0755,
		content => "#!/bin/sh\npuppet agent --onetime --no-daemonize --verbose $1\n",
	}
}

node 'puppetagent.example.org' {
	include toolbox
	include apache
}
