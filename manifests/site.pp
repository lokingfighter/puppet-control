node 'maratiusure4.mylabserver.com' {
  notify { 'test-message-for maratiusure4':
    message => 'This is maratiusure4 using a node def',
  }
}
node default {
  hiera_include('classes')
}

node 'maratiusure5.mylabserver.com' {
  include pe_repo::platform::el_6_x86_64
  include pe_repo::platform::ubuntu_1204_amd64
}
