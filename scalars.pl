use strict; #pragma
use warnings;

my $undef = undef;
print $undef; # prints the empty string "" and raise a warning 

#implicit undef
my $undef2; 
print $undef2; # prints "" and rises exactly the same warning

my $num=4040.5;
print $num . "\n";

my $string = "world\n";
print "Hello" . $string; # Hello world

