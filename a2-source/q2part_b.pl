#!/usr/bin/perl
use strict;
use warnings;
print join "", grep{ord($_)<=57 && ord($_)>=46} split //, "CSE337";
