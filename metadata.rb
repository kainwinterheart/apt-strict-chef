name             'apt-strict-chef'
maintainer       'Gennadiy Filatov'
maintainer_email 'gfilatov@cpan.org'
license          'Apache 2.0'
description      'Installs/Configures apt-strict-chef'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{debian ubuntu}.each do |os|
  supports os
end
