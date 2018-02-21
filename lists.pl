use strict; #pragma
use warnings;
use feature qw(say);

my @array = (
	"apples",
	"bananas",
	(
		"inner",
		"list",
		"several",
		"entries",
	),
	"cherries",
);

say $array[0];
say $array[1];
say $array[2];
say $array[3];
say $array[4];
say $array[5];
say $array[6];


my %hash = (
	"beer" => "good",
	"bananas" => (
		"green" => "wait",
		"yellow" => "eat",
	),
);

# The above raises a warning because the hash was declared using a 7-element list

say $hash{"beer"};    # good
say $hash{"bananas"}; # green
say $hash{"wait"};    # yellow
say $hash{"eat"};     # Use of uninitialized value $hash{"eat"} in say at lists.pl line 39.

# Concatenate multiple arrays

my @bones = ("humerus", ("jaw", "skull"), "tibia");
my @fingers = ("thumb", "index", "middle", "ring", "little");
my @parts = (@bones, @fingers, ("foot", "toes"), "eyeball", "knuckle");

say @parts;
