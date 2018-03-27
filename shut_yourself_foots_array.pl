use strict; #pragma
use warnings;
use feature qw(say);


#This array has 5 elements
my @array1 = (1,2,3,4,5);
say @array1; # "12345"

#This array has ONE element reference to anonymous
my @array2 = [1,2,3,4,5];
say @array2; #ARRAY(0x55a822c74a50)

#This scalar is a reference to anonymous
my $arrayRef = [1,2,3,4,5];
say $arrayRef; #ARRAY(0x55a822c74a50)
say @{ $arrayRef }; # "12345"
say @$arrayRef; # "12345"
