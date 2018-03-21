use strict; #pragma
use warnings;
use feature qw(say);

my @outer = ("Sun", "Mercury", "Venus", undef, "Mars");
my @inner = ("Earth", "Moon");

$outer[3] = @inner;

say $outer[3]; #2

#A reference is created using a backslash
my $colour = "Indigo";
my $scalarRef = \$colour;

say $colour; #"Indigo"
say $scalarRef; #SCALAR(0x55dcabb73690)
say ${ $scalarRef }; #"Indigo"

#Omiting the braces
say $$scalarRef; #"Indigo"

my @colours = ("Red", "Orange", "Yellow", "Green", "Blue");
my $arrayRef = \@colours;

say $colours[0]; #Red
say ${ $arrayRef }[0]; #Red
say $$arrayRef [0]; #Red
say $arrayRef->[0]; #Red

my %atomicWeights = ("Hydrogen" => 1.008, "Helium" => 4.003, "Manganese" => 54.94);
my $hashRef = \%atomicWeights;

say $atomicWeights{"Helium"}; #4.003
say ${ $hashRef }{"Helium"};
say $hashRef->{"Helium"}; #Exactly the same thing - this is very common.
