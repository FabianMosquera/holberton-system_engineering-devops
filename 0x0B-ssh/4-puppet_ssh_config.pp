#  SSH configuration file so that you can connect to a server without typing a password
file_line { 'ssh identity':
  ensure   => present,
  path     => '/etc/ssh/ssh_config',
  line     => 'IdentityFile ~/.ssh/holberton',
  multiple => false,
}
file_line { 'ssh PassAuth':
  ensure   => present,
  path     => '/etc/ssh/ssh_config',
  line     => 'PasswordAuthentication no',
  multiple => false,
}
file_line { 'ssh BatchMode':
  ensure   => present,
  path     => '/etc/ssh/ssh_config',
  line     => 'BatchMode no',
  multiple => false,
}
