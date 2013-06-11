package App::DuckPAN::Cmd::Release;
# ABSTRACT: Release the distribution of the current directory

use MooX qw( Options );
with qw( App::DuckPAN::Cmd );

sub run {
    my ( $self ) = @_;

    my $ret = system('dzil release');

    print STDERR '[ERROR] Could not begin release. Is Dist::Zilla installed?'
      if $ret == -1;

    return $ret;
}

1;
