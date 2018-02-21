use strict; #pragma
use warnings;

use feature qw(say);
#https://stackoverflow.com/questions/2899367/how-can-perls-print-add-a-newline-by-default

my $string = "world";

my @array = (
    "print",
    "these",
    "strings",
    "out",
    "for",
    "me", # trailing comma is okay
);

print $array[0];
print $array[1];
print $array[2];
print $array[3];
print $array[4];
print $array[5];
print $array[6]; # returns undef, prints "" and raises a warning
print "\n";

print $array[-1];
print $array[-2];
print $array[-3];
print $array[-4];
print $array[-5];
print $array[-6];
print $array[-7]; # returns undef, prints "" and raises a warning
print "\n";

#print "This array has " . (scalar @array) . " elements";
say "This array has " . (scalar @array) . " elements"; # 5
say "The last populated index is " . $#array; # 6
say "The last populated index is " . $array[$#array]; # me

#Interpolated variables
say "Hello $string";
say "@array"; # print these strings out for me

#Prevented interpolation
say "Hello \$string"; # Hello $string
say 'Hello $string'; # Hello $string
say "\@array"; # @array
say '@array'; # @array
