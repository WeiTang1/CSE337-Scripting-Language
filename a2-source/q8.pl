#!/usr/bin/perl
use strict;
use warnings;

my $hash_ref = {};
open INPUT,"< $ARGV[0]" or die "Can't open input file :$!";

# while (<INPUT>){
#
#   foreach my $word(split){
#     my $found = 0;
#     my @hash_keys = keys $hash_ref;
#     foreach my $key (@hash_keys){
#       if ($word eq $key){
#         $$hash_ref{$word} .="=";
#         $found = 1;
#       }
#     }
#     if ($found == 0){
#       $$hash_ref{$word} ="=";
#     }
#
#   }
# }
#
# while(my($key,$value) = each $hash_ref){
#   print "$key:\t$value\n";
# }

while (<INPUT>){

  foreach my $word(split){
        $$hash_ref{$word} .="=";
}

while(my($key,$value) = each $hash_ref){
  print "$key:\t$value\n";
}
}

close INPUT;
