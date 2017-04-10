#!/usr/bin/perl
use strict;
use warnings;

unless($ARGV[0]){
  die "Need input file";
}

my $filename = $ARGV[0];
open FILE,"< $filename" or die " Can't open input file: $!";
# read lines from file
while (my $line = <FILE>){
  chomp $line;
  # test cases
  if(-e $line){
    print "E\t";
  }else{
    print "-\t";
  }
  if(-T $line){
    print "T\t";
  }else{
    print "-\t";
  }
  if(-r $line){
    print "R\t";
  }else{
    print "-\t";
  }
  if(-w $line){
    print "W\t";
  }else{
    print "-\t";
  }
  if(-x $line){
    print "X\t";
  }else{
    print "-\t";
  }
  print "$line\n";

}
close FILE;
