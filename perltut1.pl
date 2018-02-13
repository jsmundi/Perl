use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

print "Hello WOrld\n"; 

my $name = 'Jai'; #Scalar

my ($age, $street) = (40, '123 Main St');

my $my_info = "$name lives on \"$street\"\n";

$my_info = qq{$name live on "$street"\n};

print $my_info; 

# You can define a long string over multiple lines like this
 
my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END
 
# say ends the line with a newline
say $bunch_of_info;
 
# The largest integer you can hold
my $big_int = 18446744073709551615;
 
# You can formatted strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)
printf("%u \n", $big_int + 1);
 
# You can trust 16 digits of precision for floats on most machines
my $big_float = .1000000000000001;
 
# You can define the decimal precision amount
printf("%.16f \n", $big_float + .1000000000000001);
 
# Switch values of scalars
my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);
say "$first $second";