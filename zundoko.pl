#!/usr/bin/env perl

use strict;
use warnings;

use lib 'lib';
use Zundokoshelf;
use Time::HiRes 'usleep';

local $| = 1;

my $zs = Zundokoshelf->new;
my $iterator = $zs->iterator;
my $checker = $zs->checker;

while(){
    if ($zs->size < 5){
        usleep(10000);
        $zs->add_zundoko;
    }else{
        last if($checker->check_zundoko);
    }
}

usleep(400000);
print "KI ";
usleep(400000);
print "YO ";
usleep(400000);
print "SHI!\n";
1;
