#weitang 108979235
use strict;
use warnings;

open INPUT,"< $ARGV[0]" or die "Can't open input file :$!";
# use for subsitution
my $ninteen = 19;
my $twenty = 20;


while (my $line = <INPUT>){
	# substitution
	$line =~ s/\b(\d\d\/\d\d\/)([5-9]\d)\b/$1$ninteen$2/g;
	$line =~ s/\b(\d\d\/\d\d\/)([^5-9]\d)\b/$1$twenty$2/g;
	print $line;
}
print "\n";
close INPUT;
