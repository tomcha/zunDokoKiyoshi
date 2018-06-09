package Iterator;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $shelf = shift;
    my $self = bless {
        shelf => $shelf,
        index => 0
    }, $class;
    return $self;
}

sub has_next {
    my $self = shift;
    my $size = $self->{shelf}->size;
    if ($size > $self->{index}){
        return 1;
    }else{
        return 0;
    }
}

sub next {
    my $self = shift;
    my $i = $self->{index};
    my $zundoko = $self->{shelf}->{zundoko}->[$i];
    $self->{index} += 1;
    return $zundoko;
}
1;
