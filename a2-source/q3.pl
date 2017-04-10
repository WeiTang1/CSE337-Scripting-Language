#!/usr/bin/perl
use strict;
use warnings;

#unless
unless($ARGV[0]){
  print "Please enter number of quizs with command line, System exit\n";
  exit 0;
};

my $number_quiz = $ARGV[0];
my $first_operand;
my $second_operand;
my $answer;
my $user_answer;
my $score = 0;
my $count = 0;
my $percentage = 0;
# do...untill loop
do{
  $first_operand = int(rand 20)+1;
  $second_operand = int(rand 30)+1;
  my $operand = ("+","-")[int(rand 2)];
  # modifer
  $answer = $first_operand+$second_operand
    if($operand eq "+");
  $answer = $first_operand-$second_operand
    if($operand eq "-");
  print "$first_operand$operand$second_operand =";
  $user_answer  = <STDIN>;
  if($user_answer == $answer){
      print "Excellent\n";
      $score++;
  }
  $count ++;
} until($count == $number_quiz);
$percentage = $score/$number_quiz unless $score == 0;
print "Your score is $score out of $number_quiz. That's ",$percentage*100,"% correct. Congrats\n";
