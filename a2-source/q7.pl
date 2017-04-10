#!/usr/bin/perl
use strict;
use warnings;


print "1.prints the number of environment variables that are in %ENV:\n";
my @environment_vairable = keys %ENV;
my $number_of_environment_variable = @environment_vairable;
print "$number_of_environment_variable\n";

print "\n2.prints the content of the PATH variable in %ENV:\n";
print "$ENV{PATH}\n";

print "\n3.prints the number of directories in the PATH variable:\n";
my $PATH_String = $ENV{PATH};
my @PATH_ARRAY = split(":",$PATH_String);
my $PATH_SIZE = @PATH_ARRAY;
print "$PATH_SIZE\n";

print "\n4.sorts the directories in the PATH variable, and prints them one directory per line:\n";

my @PATH_SORT = sort(@PATH_ARRAY);
foreach my $DIRECTORY (@PATH_SORT){
  print "$DIRECTORY\n";
}

#use chmod u+x on while.pl
print "\n5.adds the current directory to the PATH, and runs a Perl script in the current directory from within your program using system(“while.pl”);:\n";

my $current_directory = $ENV{PWD};
$current_directory .= "/";
print $current_directory;
$PATH_String .= ":";
$PATH_String .= $current_directory;
$ENV{PATH} = $PATH_String;
system("while.pl");
