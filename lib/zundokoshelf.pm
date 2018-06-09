package Zundokoshelf;

use strict;
use warnings;
use lib 'lib';

use ZundokoChecker;
use Iterator;
use Zundoko;

sub new {
    my $class = shift;
    my $self = bless {
        zundoko => []
    }, $class;
}

sub add_zundoko {
    my $self = shift;
    my $zundoko = Zundoko->new;
    push @{$self->{zundoko}},  $zundoko;
}

sub checker {
    my $self = shift;
    my $checker = ZundokoChecker->new($self);
    return $checker;
}

sub iterator {
    my $self = shift;
    my $iterator = Iterator->new($self);
    return $iterator;
}

sub size {
    my $self = shift;
    return scalar(@{$self->{zundoko}});
}
1;
