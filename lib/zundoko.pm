package Zundoko;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $self = bless {
        seed    =>  ''
    }, $class;
    $self->generate_seed;
    return $self;
}

sub generate_seed {
    my $self = shift;
    my $i = int(rand(2));
    if ($i == 0){
        $self->{seed} = 'zun';
    }else{
        $self->{seed} = 'doko';
    }
}
1;
