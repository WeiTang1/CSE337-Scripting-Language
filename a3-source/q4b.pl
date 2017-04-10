#weitang 108979235
use strict;
use warnings;


unless($ARGV[0] && $ARGV[1] && $ARGV[2] && $ARGV[3] && $ARGV[4]){
  die "Need complete command line \n";
}


my $length = $ARGV[0]; #length
my $m = $ARGV[1]-1;	# position of the word -1 for index
my $c = $ARGV[2];	# denotes an English letter
my $n = $ARGV[3]-1;	#another position -1 for index
my $r = $ARGV[4];	# another char


open INPUT,"< /usr/share/dict/words" or die "Can't open input file :$!";

while (my $line = <INPUT>){
	#check length
	if ($line =~ /^\w{$length}$/){
		# check first char
		if($line =~/^\w{$m}$c/){
			# check second char
			if($line =~/^\w{$n}$r/){
				print $line;
			}
		}
	}

}