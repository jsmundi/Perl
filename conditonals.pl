use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age < 16){
    say "You cannot drive";
}elsif(!$is_not_intoxicated){
    say "You can't drive";
}else{
    say "You can drive"; 
}


