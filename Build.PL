use strict;
use Alien::Base::ModuleBuild;
 
my $builder = Alien::Base::ModuleBuild->new(
  module_name      => 'Alien::UnRTF',
  dist_abstract    => 'Build and make available the unrtf tool',
  alien_name       => 'unrtf',
  alien_repository => {
    protocol => 'http',
    host     => 'ftp.gnu.org',
    location => '/gnu/unrtf',
    pattern  => qr/^unrtf[_-]([\d\.-]+)\.tar\.gz$/,
  },
  configure_requires => {
    'Alien::Base::ModuleBuild' => 0,
  },
  requires => {
    'Alien::Base' => 0,
  },
  alien_build_commands => [ 'sh bootstrap', '%c --prefix=%s', 'make' ]
);
 
$builder->create_build_script;
