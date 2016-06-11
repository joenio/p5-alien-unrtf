use strict;
use Alien::Base::ModuleBuild;
 
my $builder = Alien::Base::ModuleBuild->new(
  module_name      => 'Alien::UnRTF',
  dist_abstract    => 'Build and install unrtf',
  alien_name       => 'unrtf',
  alien_repository => {
    protocol => 'http',
    host     => 'ftp.gnu.org',
    location => '/gnu/unrtf',
    pattern  => qr/^unrtf[_-]([\d\.-]+)\.tar\.gz$/,
  },
);
 
$builder->create_build_script;
