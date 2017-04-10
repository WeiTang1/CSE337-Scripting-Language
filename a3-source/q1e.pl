#weitang 108979235
use strict;
use warnings;

print "Please Enter pattern:\n";
my $pattern = <>;
chomp($pattern);
my $reg = qr/$pattern/;
print "please Enter words:\n";
while (<>){
	chomp();
	print ;
	print ":";
	if (m/$reg/){
		print "match:" ;
		# print exp instead of subsitution
		print $`,"<",$&,">",$',"\n";
	}
	else{
		print "no match\n";
	}

}
#part a








