#!/usr/bin/perl
use strict;
use warnings;
#open input and out put files
open INPUT, "< adm-kng.com.archive.html" or die "Can't open input file: $!";
open OUTPUT,"> images.html" or die " Can't open images.html: $!";
# print the skeleton html to ouput file
print OUTPUT "<html>\n<title>337 A2 HTML images</title>\n<body>";
print "ALL .jpg URLs:\n";
# regex matching
while (my $line = <INPUT>){
  # all url
  if($line =~ /data-imageurl="(.+?)">/){
    my $url = $1;
    print "$url\n";
    # all url with 3x.media or 4x.media
    if($url =~ /http:\/\/[34]\d*\.media/){
      print OUTPUT "<img src=\"$url\">\n";
    }
  }
}
print OUTPUT "</body>\n</html>";
print "DONE, see image.html\n";
close INPUT;
close OUTPUT;
