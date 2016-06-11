use Alien::UnRTF;
use Module::Build 0.28; # need at least 0.28
 
my $builder = Module::Build->new(
  alien_repository => {
    protocol => 'http',
    host     => 'ftp.gnu.org',
    location => '/gnu/unrtf',
    pattern  => qr/^unrtf_([\d\.-]+)\.tar\.gz$/,
  },
);
 
$builder->create_build_script;
