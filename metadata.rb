name             'devenv'
maintainer       'Rapid7'
maintainer_email 'erran_carey@rapid7.com'
license          'Apache 2.0'
description      'Configures a Development Environment by installing Homebrew, RVM, Vagrant, and Vim.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'editor' # Pulls in the editor/vim/gvim cookbooks
depends 'git'
depends 'homebrew'
depends 'rvm'
depends 'vagrant'
