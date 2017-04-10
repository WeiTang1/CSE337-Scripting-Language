#!/usr/bin/perl
use strict;
use warnings;

my $hash_level1 = {};
my @word_array;


# level - 1 Hash key :    each words in array : W
# level - 1 Hash value : level - 2 hash
#
# level - 2 Hash key : every word after W
# level - 2 Hash Value : time of appearance in form of '='

# get all text by word and put it in to array and create the top level hash in level- 1 hash
open INPUT,"< $ARGV[0]" or die "Can't open input file :$!";
while (<INPUT>){
  foreach my $word(split){
    push @word_array,$word;
    $$hash_level1{$word}="";
  }
}
close INPUT;

# create level- 2 hash for each key in level-1
foreach my $level_1_key (keys %$hash_level1){

  #create a level - hash
  my $hash_level2 = {};
  my @temp = @word_array;
  for(my $count = 0; @temp; $count ++){
    my $word = $temp[0];
    if ($word eq $level_1_key){
      shift @temp;
      if (@temp){
        my $following_word = $temp[0];
        $$hash_level2{$following_word} .= "=";
      }
    }
    else{
      shift @temp;
    }
  }
  $$hash_level1{$level_1_key} = $hash_level2;
}


print "Enter a word: ";
my $word = <STDIN>;
chomp($word);
if ($hash_level1->{$word}){
  while(my($key,$value) = each $hash_level1->{$word}){
    print "$key:\t$value\n";
  }
}else{
  print "threre's no  $word in the input file\n";
}
