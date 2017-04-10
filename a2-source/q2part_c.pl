#!/usr/bin/perl
use strict;
use warnings;
use List::Util "reduce";
my $foo = reduce {$b % 2 == 0 ? $a + $b/2 :$a + $b} 1..100;
print "$foo\n";
