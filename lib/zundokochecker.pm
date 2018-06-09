package ZundokoChecker;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $shelf = shift;
    my $self = bless {
        shelf => $shelf,
        pattern => ['zun', 'zun', 'zun', 'zun', 'doko'],
        index => 0,
    }, $class;
    return $self;
}

sub check_zundoko{
    my $self = shift;
    for my $p (@{$self->{pattern}}){
        my $zundoko = shift(@{$self->{shelf}->{zundoko}});
        print $zundoko->{seed} . "\n";
        if ($zundoko->{seed} ne $p){
            print "\n";
            return 0;
        }
    }
    return 1;
}
1;
