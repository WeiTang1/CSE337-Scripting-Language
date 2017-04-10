#!/usr/bin/perl
use strict;
use warnings;

#subroute for decrypt a character
sub decrypt{
  my ($chr) = @_;
  if (ord($chr) >=97 && ord($chr) <=118){
    return chr(ord($chr)+4);
  }elsif(ord($chr) >=119 && ord($chr) <=122){
    return chr(ord($chr)+4-26);
  }else{
    return $chr;
  }
}

#subroute for encrypt a character
sub encrypt{
  my ($chr) = @_;
  if (ord($chr) >=97 && ord($chr) <=100){
    return chr(ord($chr)-4+26);
  }elsif(ord($chr) >=101 && ord($chr) <=122){
    return chr(ord($chr)-4);
  }else{
    return $chr;
  }
}

# open INPUT,"< $ARGV[0]" or die " Can't open file: $!\n";
my $string = "pda lupdkj lnkcnwiiejc hwjcqwca swo ejrajpaz xu cqezk rwj nkooqi, w zqpyd ykilqpan lnkcnwiian, wxkqp 25 uawno wck. rwj nkooqi zabejaz deo ckwho bkn lupdkj wo bkhhkso: wj awou wjz ejpqepera hwjcqwca fqop wo lksanbqh wo iwfkn ykilapepkno; klaj okqnya, ok wjukja ywj ykjpnexqpa pk epo zarahkliajp; ykza pdwp eo wo qjzanopwjzwxha wo lhwej ajcheod; oqepwxehepu bkn aranuzwu pwogo, whhksejc bkn odknp zarahkliajp peiao";
# close INPUT;

print "The original string:\n$string";
#split in to array for mapping
my @split = split("",$string);
my $encrypted = join("",map{decrypt($_)} @split);

print "\n\nafter mapping:\n$encrypted";

@split = split("",$encrypted);
my $decrypted = join("",map{encrypt($_)} @split);
print "\n\nafter enctyption:\n$decrypted\n";
